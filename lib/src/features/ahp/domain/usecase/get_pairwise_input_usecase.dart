import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/usecase/usecase.dart';
import 'package:technq/src/features/ahp/domain/entities/ahp_pairwise_matrix_input_entities.dart';
import 'package:technq/src/features/ahp/domain/repository/ahp_repository.dart';

class GetPairwiseInputUsecase extends Usecase<AhpPairwiseMatrixInputEntities?, String?>{

  final AhpRepository _ahpRepository;

  GetPairwiseInputUsecase(this._ahpRepository);

  @override
  Future<Either<Failure, AhpPairwiseMatrixInputEntities?>> call(String? schoolType) async {
    return await _ahpRepository.getPairwiseInput(schoolType);
  }
}