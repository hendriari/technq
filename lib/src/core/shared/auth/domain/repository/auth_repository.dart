import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> checkToken();
}
