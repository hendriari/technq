import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technq/src/features/dashboard/domain/entities/fakultas_entities.dart';

part 'dashboard_state.freezed.dart';

@freezed
sealed class DashboardState with _$DashboardState {
  const factory DashboardState.init() = _Init;

  const factory DashboardState.loadingGetFakultas() = _LoadingGetFakultas;

  const factory DashboardState.successGetFakultas({
    required List<FakultasEntities>? listFakultas,
  }) = _SuccessGetFakultas;

  const factory DashboardState.failed({
    required String message,
  }) = _Failed;
}
