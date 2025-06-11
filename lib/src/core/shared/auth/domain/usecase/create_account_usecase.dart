import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/auth/domain/entities/user_entities.dart';
import 'package:technq/src/core/shared/auth/domain/repository/auth_repository.dart';
import 'package:technq/src/core/usecase/usecase.dart';

class CreateAccountUsecase extends Usecase<UserEntities?, CreateAccountParams> {
  final AuthRepository _authRepository;

  CreateAccountUsecase(this._authRepository);

  @override
  Future<Either<Failure, UserEntities?>> call(CreateAccountParams param) async {
    return await _authRepository.createAccount(
      param.name,
      param.schoolName,
      param.schoolType,
    );
  }
}

class CreateAccountParams {
  final String name;
  final String schoolName;
  final String schoolType;

  CreateAccountParams({
    required this.name,
    required this.schoolName,
    required this.schoolType,
  });
}
