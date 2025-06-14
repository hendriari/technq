import 'package:dartz/dartz.dart';
import 'package:flutter_decision_making/ahp/domain/entities/ahp_result.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/usecase/empty_param.dart';
import 'package:technq/src/core/usecase/usecase.dart';
import 'package:technq/src/features/ahp/domain/repository/ahp_repository.dart';

class GetAhpResultUsecase extends Usecase<AhpResult?, EmptyParam> {
  final AhpRepository _ahpRepository;

  GetAhpResultUsecase(this._ahpRepository);

  @override
  Future<Either<Failure, AhpResult?>> call(EmptyParam param) async {
    return await _ahpRepository.getAhpResult();
  }
}
