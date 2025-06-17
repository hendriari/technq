import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_state.freezed.dart';

@freezed
sealed class MenuState with _$MenuState {
  factory MenuState.init({
    @Default(0) int indexMenu,
  }) = _Init;

  factory MenuState.changedIndex({
    @Default(0) int indexMenu,
  }) = _ChangedIndex;

  factory MenuState.exitApp({
    @Default(0) int indexMenu,
    required bool exit,
    required DateTime timeExit,
  }) = _ExitApp;

  factory MenuState.failed({
    @Default(0) int indexMenu,
    required String message,
  }) = _Failed;
}
