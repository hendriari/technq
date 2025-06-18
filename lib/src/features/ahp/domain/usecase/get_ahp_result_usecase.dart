import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/core/usecase/usecase.dart';
import 'package:technq/src/features/ahp/domain/repository/ahp_repository.dart';

class GetAhpResultUsecase
    extends Usecase<AhpResultEntities?, GetAhpResultParams> {
  final AhpRepository _ahpRepository;

  GetAhpResultUsecase(this._ahpRepository);

  @override
  Future<Either<Failure, AhpResultEntities?>> call(
      GetAhpResultParams params) async {
    return await _ahpRepository.getAhpResult(params.userId, params.userName);
  }
}

class GetAhpResultParams {
  final String? userId;
  final String? userName;

  GetAhpResultParams({
    required this.userId,
    required this.userName,
  });
}
