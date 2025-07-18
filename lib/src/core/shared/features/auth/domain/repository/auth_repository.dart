import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/features/auth/domain/entities/user_entities.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> checkToken();

  Future<Either<Failure, UserEntities?>> createAccount(
    String name,
    String schoolName,
    String schoolType,
  );

  Future<Either<Failure, UserEntities?>> getUserData();

  Future<Either<Failure, String?>> updateUserSchool(
      String schoolName, String schoolType);
}
