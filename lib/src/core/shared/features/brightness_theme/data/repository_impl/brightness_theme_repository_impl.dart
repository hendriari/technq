import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/features/brightness_theme/data/datasource/brightness_theme_local_datasource.dart';
import 'package:technq/src/core/shared/features/brightness_theme/domain/repository/brightness_theme_repository.dart';

class BrightnessThemeRepositoryImpl extends BrightnessThemeRepository {
  final BrightnessThemeLocalDatasource _brightnessThemeLocalDatasource;

  BrightnessThemeRepositoryImpl(this._brightnessThemeLocalDatasource);

  @override
  Future<bool?> getCurrentTheme() async {
    return await _brightnessThemeLocalDatasource.getCurrentTheme();
  }

  @override
  Future<Either<Failure, String?>> saveTheme(bool isDark) async {
    try {
      final result = await _brightnessThemeLocalDatasource.saveTheme(isDark);

      return Right(result);
    } catch (e) {
      return Left(GeneralFailure(message: e.toString()));
    }
  }
}
