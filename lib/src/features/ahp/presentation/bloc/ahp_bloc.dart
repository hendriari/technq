import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_decision_making/ahp/domain/entities/ahp_result.dart';
import 'package:flutter_decision_making/ahp/domain/entities/criteria.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_alternative_input.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_comparison_input.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/usecase/empty_param.dart';
import 'package:technq/src/features/ahp/domain/entities/ahp_pairwise_matrix_input_entities.dart';
import 'package:technq/src/features/ahp/domain/usecase/get_ahp_result_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/get_pairwise_input_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/reset_ahp_data_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/update_pairwise_alternative_input_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/update_pairwise_criteria_input_usecase.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_event.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_state.dart';

class AhpBloc extends Bloc<AhpEvent, AhpState> {
  final GetPairwiseInputUsecase getPairwiseInputUsecase;
  final UpdatePairwiseCriteriaInputUsecase updatePairwiseCriteriaInputUsecase;
  final UpdatePairwiseAlternativeInputUsecase
      updatePairwiseAlternativeInputUsecase;
  final GetAhpResultUsecase getAhpResultUsecase;
  final ResetAhpDataUsecase resetAhpDataUsecase;

  AhpBloc({
    required this.getAhpResultUsecase,
    required this.updatePairwiseCriteriaInputUsecase,
    required this.updatePairwiseAlternativeInputUsecase,
    required this.getPairwiseInputUsecase,
    required this.resetAhpDataUsecase,
  }) : super(AhpState.init()) {
    on<GeneratePairwiseMatrixInputEvent>(_getPairwiseInput);
    on<UpdatePairwiseMatrixCriteriaEvent>(_updatePairwiseCriteria);
    on<UpdatePairwiseMatrixAlternativeEvent>(_updatePairwiseAlternative);
    on<GetAhpResultEvent>(_getAhpResult);
    on<ResetAhpResultEvent>(_resetAhp);
    on<ChangePairwiseChoiceEvent>(_changePairwiseChoice);
  }

  Future<void> _getPairwiseInput(
      GeneratePairwiseMatrixInputEvent event, Emitter<AhpState> emit) async {
    emit(AhpState.loadingGeneratePairwiseInput(
        pairwiseInputs: state.pairwiseInputs, ahpResult: state.ahpResult));

    Either<Failure, AhpPairwiseMatrixInputEntities?> result =
        await getPairwiseInputUsecase.call(event.schoolType);

    result.fold(
        (failure) => emit(AhpState.failed(
            message: failure.message,
            pairwiseInputs: state.pairwiseInputs,
            ahpResult: state.ahpResult)), (data) {
      emit(AhpState.successGeneratePairwiseInput(
        ahpResult: null,
        pairwiseInputs: data,
        alternativeIndex: -1,
      ));
    });
  }

  Future<void> _updatePairwiseCriteria(
      UpdatePairwiseMatrixCriteriaEvent event, Emitter<AhpState> emit) async {
    try {
      if (event.id == null) {
        emit(AhpState.failed(
          message: "ID tidak boleh null",
          ahpResult: state.ahpResult,
          pairwiseInputs: state.pairwiseInputs,
          alternativeIndex: state.alternativeIndex,
        ));
        return;
      }

      Either<Failure, List<PairwiseComparisonInput<Criteria>>?> result =
          await updatePairwiseCriteriaInputUsecase.call(
        UpdatePairwiseCriteriaInputParams(
          id: event.id,
          isLeftMoreImportant: event.isLeftMoreImportant,
          referenceValue: event.referenceValue,
        ),
      );

      result.fold(
        (failure) => emit(AhpState.failed(
          message: failure.message,
          ahpResult: state.ahpResult,
          pairwiseInputs: state.pairwiseInputs,
          alternativeIndex: state.alternativeIndex,
        )),
        (data) {
          var criteria =
              List<PairwiseComparisonInput<Criteria>>.from(data ?? []);
          var updatePairwise =
              state.pairwiseInputs?.copyWith(inputCriteria: criteria);

          emit(AhpState.updatedPairwiseInput(
            ahpResult: state.ahpResult,
            pairwiseInputs: updatePairwise,
            alternativeIndex: state.alternativeIndex,
          ));
        },
      );
    } catch (e) {
      emit(AhpState.failed(
        message: e.toString(),
        ahpResult: state.ahpResult,
        pairwiseInputs: state.pairwiseInputs,
        alternativeIndex: state.alternativeIndex,
      ));
    }
  }

  Future<void> _updatePairwiseAlternative(
      UpdatePairwiseMatrixAlternativeEvent event,
      Emitter<AhpState> emit) async {
    if (event.id != null) {
      Either<Failure, List<PairwiseAlternativeInput>?> result =
          await updatePairwiseAlternativeInputUsecase
              .call(UpdatePairwiseAlternativeInputParam(
        id: event.id,
        isLeftMoreImportant: event.isLeftMoreImportant,
        referenceValue: event.referenceValue,
        alternativeId: event.alternativeId,
      ));

      result.fold(
          (failure) => emit(AhpState.failed(
                message: failure.message,
                ahpResult: state.ahpResult,
                pairwiseInputs: state.pairwiseInputs,
                alternativeIndex: state.alternativeIndex,
              )), (data) {
        var alternative = List<PairwiseAlternativeInput>.from(data ?? []);
        var updatePairwise =
            state.pairwiseInputs?.copyWith(inputAlternative: alternative);

        emit(AhpState.updatedPairwiseInput(
          ahpResult: state.ahpResult,
          pairwiseInputs: updatePairwise,
          alternativeIndex: state.alternativeIndex,
        ));
      });
    }
  }

  Future<void> _changePairwiseChoice(
      ChangePairwiseChoiceEvent event, Emitter<AhpState> emit) async {
    final maxCount = (state.pairwiseInputs?.inputAlternative.length ?? 0) - 1;
    int currentAltIndex = state.alternativeIndex ?? -1;

    if (event.isNext && currentAltIndex < maxCount) {
      currentAltIndex++;
    } else if (!event.isNext && currentAltIndex > -1) {
      currentAltIndex--;
    }

    emit(AhpState.changedAltIndex(
      ahpResult: state.ahpResult,
      pairwiseInputs: state.pairwiseInputs,
      alternativeIndex: currentAltIndex,
    ));
  }

  Future<void> _getAhpResult(
      GetAhpResultEvent event, Emitter<AhpState> emit) async {
    emit(AhpState.loadingGetResult(
      ahpResult: state.ahpResult,
      pairwiseInputs: state.pairwiseInputs,
      alternativeIndex: state.alternativeIndex,
    ));

    Either<Failure, AhpResult?> result = await getAhpResultUsecase.call(
        GetAhpResultParams(userId: event.userId, userName: event.userName));

    result.fold(
        (failure) => emit(AhpState.failed(
              message: failure.message,
              ahpResult: state.ahpResult,
              pairwiseInputs: state.pairwiseInputs,
              alternativeIndex: state.alternativeIndex,
            )), (data) {
      emit(AhpState.successGetResult(
        ahpResult: data,
        pairwiseInputs: state.pairwiseInputs,
        alternativeIndex: state.alternativeIndex,
      ));
    });
  }

  Future<void> _resetAhp(
      ResetAhpResultEvent event, Emitter<AhpState> emit) async {
    Either<Failure, String?> result =
        await resetAhpDataUsecase.call(EmptyParam());

    result.fold(
        (failure) => emit(AhpState.failed(
              message: failure.message,
              ahpResult: state.ahpResult,
              pairwiseInputs: state.pairwiseInputs,
              alternativeIndex: state.alternativeIndex,
            )), (data) {
      emit(AhpState.successResetResult());
    });
  }
}
