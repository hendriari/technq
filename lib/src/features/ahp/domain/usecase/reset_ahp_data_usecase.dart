import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/usecase/empty_param.dart';
import 'package:technq/src/core/usecase/usecase.dart';
import 'package:technq/src/features/ahp/domain/repository/ahp_repository.dart';

class ResetAhpDataUsecase extends Usecase<String?, EmptyParam> {
  final AhpRepository _ahpRepository;

  ResetAhpDataUsecase(this._ahpRepository);

  @override
  Future<Either<Failure, String?>> call(EmptyParam param) async {
    return await _ahpRepository.resetAhpData();
  }
}
