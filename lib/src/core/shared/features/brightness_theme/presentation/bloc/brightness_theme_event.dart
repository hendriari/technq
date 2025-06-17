import 'package:freezed_annotation/freezed_annotation.dart';

part 'brightness_theme_event.freezed.dart';

@freezed
sealed class BrightnessThemeEvent with _$BrightnessThemeEvent {
  const factory BrightnessThemeEvent.getCurrentTheme() = GetCurrentThemeEvent;
  const factory BrightnessThemeEvent.saveCurrentTheme(bool isDark) = SaveCurrentThemeEvent;
}
