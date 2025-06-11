import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_event.freezed.dart';

@freezed
sealed class MenuEvent with _$MenuEvent {
  const factory MenuEvent.changeIndexMenuEvent({required int index, e}) =
      ChangeIndexMenuEvent;

  const factory MenuEvent.exitAppEvent() = ExitAppEvent;
}
