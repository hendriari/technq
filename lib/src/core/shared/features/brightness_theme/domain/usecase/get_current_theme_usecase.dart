import 'package:technq/src/core/shared/features/brightness_theme/domain/repository/brightness_theme_repository.dart';

class GetCurrentThemeUsecase {
  final BrightnessThemeRepository _brightnessTheme;

  GetCurrentThemeUsecase(this._brightnessTheme);

  Future<bool?> execute() async => await _brightnessTheme.getCurrentTheme();
}
