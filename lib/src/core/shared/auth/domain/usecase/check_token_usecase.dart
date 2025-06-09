import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/auth/domain/repository/auth_repository.dart';
import 'package:technq/src/core/usecase/empty_param.dart';
import 'package:technq/src/core/usecase/usecase.dart';

class CheckTokenUsecase extends Usecase<bool, EmptyParam>{

  final AuthRepository _authRepository;

  CheckTokenUsecase(this._authRepository);

  @override
  Future<Either<Failure, bool>> call(EmptyParam param) async  {
   return _authRepository.checkToken();
  }
}