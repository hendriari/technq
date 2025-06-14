import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.freezed.dart';

@freezed
sealed class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.getFakultas() = GetFakultasEvent;
}
