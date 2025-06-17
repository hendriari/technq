import 'package:flutter_decision_making/ahp/domain/entities/ahp_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technq/src/features/ahp/domain/entities/ahp_pairwise_matrix_input_entities.dart';

part 'ahp_state.freezed.dart';

@freezed
sealed class AhpState with _$AhpState {
  const factory AhpState.init({
    @Default(null) AhpPairwiseMatrixInputEntities? pairwiseInputs,
    @Default(null) AhpResult? ahpResult,
    @Default(null) int? alternativeIndex,
  }) = _Init;

  const factory AhpState.loadingGeneratePairwiseInput({
    @Default(null) AhpPairwiseMatrixInputEntities? pairwiseInputs,
    @Default(null) AhpResult? ahpResult,
    @Default(null) int? alternativeIndex,
  }) = _LoadingGeneratePairwiseInput;

  const factory AhpState.successGeneratePairwiseInput({
    @Default(null) AhpPairwiseMatrixInputEntities? pairwiseInputs,
    @Default(null) AhpResult? ahpResult,
    @Default(null) int? alternativeIndex,
  }) = _SuccessGeneratePairwiseInput;

  const factory AhpState.updatedPairwiseInput({
    @Default(null) AhpPairwiseMatrixInputEntities? pairwiseInputs,
    @Default(null) AhpResult? ahpResult,
    @Default(null) int? alternativeIndex,
  }) = _UpdatePairwiseInput;

  const factory AhpState.changedAltIndex({
    @Default(null) AhpPairwiseMatrixInputEntities? pairwiseInputs,
    @Default(null) AhpResult? ahpResult,
    @Default(null) int? alternativeIndex,
  }) = _ChangedAltIndex;

  const factory AhpState.loadingGetResult({
    @Default(null) AhpPairwiseMatrixInputEntities? pairwiseInputs,
    @Default(null) AhpResult? ahpResult,
    @Default(null) int? alternativeIndex,
  }) = _LoadingGetResult;

  const factory AhpState.successGetResult({
    @Default(null) AhpPairwiseMatrixInputEntities? pairwiseInputs,
    @Default(null) AhpResult? ahpResult,
    @Default(null) int? alternativeIndex,
  }) = _SuccessGetResult;

  const factory AhpState.successResetResult({
    @Default(null) AhpPairwiseMatrixInputEntities? pairwiseInputs,
    @Default(null) AhpResult? ahpResult,
    @Default(null) int? alternativeIndex,
  }) = _SuccessResetResult;

  const factory AhpState.failed({
    @Default(null) AhpPairwiseMatrixInputEntities? pairwiseInputs,
    @Default(null) AhpResult? ahpResult,
    @Default(null) int? alternativeIndex,
    required String message,
  }) = _Failed;
}
