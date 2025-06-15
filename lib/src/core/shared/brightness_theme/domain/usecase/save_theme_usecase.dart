import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/brightness_theme/domain/repository/brightness_theme_repository.dart';
import 'package:technq/src/core/usecase/usecase.dart';

class SaveThemeUsecase extends Usecase<String?, bool> {
  final BrightnessThemeRepository _brightnessThemeRepository;

  SaveThemeUsecase(this._brightnessThemeRepository);

  @override
  Future<Either<Failure, String?>> call(bool isDark) async {
    return await _brightnessThemeRepository.saveTheme(isDark);
  }
}
