import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/failure/failure_mapper.dart';
import 'package:technq/src/core/shared/auth/data/datasource/auth_remote_datasource.dart';
import 'package:technq/src/core/shared/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDatasource _authRemoteDatasource;

  AuthRepositoryImpl(this._authRemoteDatasource);

  @override
  Future<Either<Failure, bool>> checkToken() async {
    try {
      final result = await _authRemoteDatasource.checkToken();

      return Right(result);
    } catch (e) {
      return Left(FailureMapper.firebaseError(e));
    }
  }
}
