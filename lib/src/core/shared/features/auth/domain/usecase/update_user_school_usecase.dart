import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/features/auth/domain/repository/auth_repository.dart';
import 'package:technq/src/core/usecase/usecase.dart';

class UpdateUserSchoolUsecase extends Usecase<String?, UpdateUserSchoolParams> {
  final AuthRepository _authRepository;

  UpdateUserSchoolUsecase(this._authRepository);

  @override
  Future<Either<Failure, String?>> call(UpdateUserSchoolParams param) async {
    return await _authRepository.updateUserSchool(
        param.schoolName, param.schoolType);
  }
}

class UpdateUserSchoolParams {
  final String schoolName;
  final String schoolType;

  UpdateUserSchoolParams({
    required this.schoolName,
    required this.schoolType,
  });
}
