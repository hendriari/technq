import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/failure/failure_mapper.dart';
import 'package:technq/src/core/shared/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:technq/src/core/shared/features/auth/data/mapper/user_extension.dart';
import 'package:technq/src/core/shared/features/auth/domain/entities/user_entities.dart';
import 'package:technq/src/core/shared/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDatasource _authRemoteDatasource;

  AuthRepositoryImpl(this._authRemoteDatasource);

  @override
  Future<Either<Failure, bool>> checkToken() async {
    try {
      final result = await _authRemoteDatasource.checkToken();

      return Right(result);
    } catch (e) {
      return Left(FailureMapper.error(e));
    }
  }

  @override
  Future<Either<Failure, UserEntities?>> createAccount(
      String name, String schoolName, String schoolType) async {
    try {
      final result =
          await _authRemoteDatasource.createUser(name, schoolType, schoolName);

      if (result != null) {
        final data = result.toEntities();
        return Right(data);
      }

      return right(null);
    } catch (e) {
      return Left(FailureMapper.error(e));
    }
  }

  @override
  Future<Either<Failure, UserEntities?>> getUserData() async {
    try {
      final data = await _authRemoteDatasource.getUserData();

      if (data != null) {
        final result = data.toEntities();

        return right(result);
      }

      return right(null);
    } catch (e) {
      return Left(FailureMapper.error(e));
    }
  }

  @override
  Future<Either<Failure, String?>> updateUserSchool(
      String schoolName, String schoolType) async {
    try {
      final result =
          await _authRemoteDatasource.updateSchool(schoolName, schoolType);

      return Right(result);
    } catch (e) {
      return Left(FailureMapper.error(e));
    }
  }
}
