import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/core/usecase/empty_param.dart';
import 'package:technq/src/features/dashboard/domain/entities/fakultas_entities.dart';
import 'package:technq/src/features/dashboard/domain/usecase/get_list_fakultas_usecase.dart';
import 'package:technq/src/features/dashboard/domain/usecase/get_list_review_usecase.dart';
import 'package:technq/src/features/dashboard/presentation/bloc/dashboard_event.dart';
import 'package:technq/src/features/dashboard/presentation/bloc/dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetListFakultasUsecase getListFakultasUsecase;
  final GetListReviewUsecase getListReviewUsecase;

  DashboardBloc({
    required this.getListFakultasUsecase,
    required this.getListReviewUsecase,
  }) : super(DashboardState.init()) {
    on<GetFakultasEvent>(_getFakultas);
    on<GetReviewEvent>(_getReview);
  }

  Future<void> _getFakultas(
      GetFakultasEvent event, Emitter<DashboardState> emit) async {
    emit(DashboardState.loadingGetFakultas(
      listFakultas: state.listFakultas,
      listReview: state.listReview,
      reviewUpdateAt: state.reviewUpdateAt,
    ));

    Either<Failure, List<FakultasEntities>?> result =
        await getListFakultasUsecase.call(EmptyParam());

    result.fold(
        (failure) => emit(DashboardState.failed(
              message: failure.message,
              listFakultas: state.listFakultas,
              listReview: state.listReview,
              reviewUpdateAt: state.reviewUpdateAt,
            )), (data) {
      emit(DashboardState.successGetFakultas(
        listFakultas: data,
        listReview: state.listReview,
        reviewUpdateAt: state.reviewUpdateAt,
      ));
    });
  }

  Future<void> _getReview(
      GetReviewEvent event, Emitter<DashboardState> emit) async {
    final lastUpdate = state.reviewUpdateAt;
    final now = DateTime.now();
    log('Waktu sekarang: $now, terakhir update: $lastUpdate');
    if (lastUpdate == null || now.difference(lastUpdate).inMinutes >= 5) {
      await _getReviewSubtractTime(emit);
    }
  }

  Future<void> _getReviewSubtractTime(Emitter<DashboardState> emit) async {
    emit(DashboardState.loadingGetReview(
      listFakultas: state.listFakultas,
      listReview: state.listReview,
      reviewUpdateAt: state.reviewUpdateAt,
    ));

    Either<Failure, List<AhpResultEntities>?> result =
        await getListReviewUsecase.call(EmptyParam());

    result.fold(
        (failure) => emit(DashboardState.failed(
              message: failure.message,
              listFakultas: state.listFakultas,
              listReview: state.listReview,
              reviewUpdateAt: state.reviewUpdateAt,
            )), (data) {
      emit(DashboardState.successGetReview(
        listFakultas: state.listFakultas,
        listReview: data,
        reviewUpdateAt: data != null && data.isNotEmpty ? DateTime.now() : null,
      ));
    });
  }
}
