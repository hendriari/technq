import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';

part 'history_state.freezed.dart';

@freezed
sealed class HistoryState with _$HistoryState {
  const factory HistoryState.init({
    @Default(null) List<AhpResultEntities>? data,
  }) = _Init;

  const factory HistoryState.loadingGetHistory({
    @Default(null) List<AhpResultEntities>? data,
  }) = _LoadingGetHistory;

  const factory HistoryState.successGetHistory({
    @Default(null) List<AhpResultEntities>? data,
  }) = _SuccessGetHistory;

  const factory HistoryState.failed({
    @Default(null) List<AhpResultEntities>? data,
    required String message,
  }) = _Failed;
}
