import 'package:freezed_annotation/freezed_annotation.dart';

part 'brightness_theme_state.freezed.dart';

@freezed
sealed class BrightnessThemeState with _$BrightnessThemeState {
  const factory BrightnessThemeState.init({
    @Default(null) bool? isDark,
  }) = _Init;

  const factory BrightnessThemeState.loadedBrightness({
    @Default(null) bool? isDark,
  }) = _LoadedBrightness;

  const factory BrightnessThemeState.changedBrightness({
    @Default(null) bool? isDark,
  }) = _ChangedBrightness;

  const factory BrightnessThemeState.failed({
    @Default(null) bool? isDark,
    required String message,
  }) = _Failed;
}
