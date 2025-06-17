import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';

abstract class BrightnessThemeRepository {
  Future<Either<Failure, String?>> saveTheme(bool isDark);

  Future<bool?> getCurrentTheme();
}
