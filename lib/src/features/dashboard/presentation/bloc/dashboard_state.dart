import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/features/dashboard/domain/entities/fakultas_entities.dart';

part 'dashboard_state.freezed.dart';

@freezed
sealed class DashboardState with _$DashboardState {
  const factory DashboardState.init({
    @Default([]) List<FakultasEntities>? listFakultas,
    @Default([]) List<AhpResultEntities>? listReview,
    @Default(null) DateTime? reviewUpdateAt,
  }) = _Init;

  const factory DashboardState.loadingGetFakultas({
    @Default([]) List<FakultasEntities>? listFakultas,
    @Default([]) List<AhpResultEntities>? listReview,
    @Default(null) DateTime? reviewUpdateAt,
  }) = _LoadingGetFakultas;

  const factory DashboardState.successGetFakultas({
    @Default([]) List<FakultasEntities>? listFakultas,
    @Default([]) List<AhpResultEntities>? listReview,
    @Default(null) DateTime? reviewUpdateAt,
  }) = _SuccessGetFakultas;

  const factory DashboardState.loadingGetReview({
    @Default([]) List<FakultasEntities>? listFakultas,
    @Default([]) List<AhpResultEntities>? listReview,
    @Default(null) DateTime? reviewUpdateAt,
  }) = _LoadingGetReview;

  const factory DashboardState.successGetReview({
    @Default([]) List<FakultasEntities>? listFakultas,
    @Default([]) List<AhpResultEntities>? listReview,
    @Default(null) DateTime? reviewUpdateAt,
  }) = _SuccessGetReview;

  const factory DashboardState.failed({
    @Default([]) List<FakultasEntities>? listFakultas,
    @Default([]) List<AhpResultEntities>? listReview,
    @Default(null) DateTime? reviewUpdateAt,
    required String message,
  }) = _Failed;
}
