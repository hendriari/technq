import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/auth/domain/entities/user_entities.dart';
import 'package:technq/src/core/shared/auth/domain/repository/auth_repository.dart';
import 'package:technq/src/core/usecase/empty_param.dart';
import 'package:technq/src/core/usecase/usecase.dart';

class GetUserDataUsecase extends Usecase<UserEntities?, EmptyParam> {
  final AuthRepository _authRepository;

  GetUserDataUsecase(this._authRepository);

  @override
  Future<Either<Failure, UserEntities?>> call(EmptyParam param) async {
    return await _authRepository.getUserData();
  }
}
