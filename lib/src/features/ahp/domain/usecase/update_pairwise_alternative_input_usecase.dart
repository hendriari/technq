import 'package:dartz/dartz.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_alternative_input.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/usecase/usecase.dart';
import 'package:technq/src/features/ahp/domain/repository/ahp_repository.dart';

class UpdatePairwiseAlternativeInputUsecase
    extends Usecase<List<PairwiseAlternativeInput>?, UpdatePairwiseAlternativeInputParam> {
  final AhpRepository _ahpRepository;

  UpdatePairwiseAlternativeInputUsecase(this._ahpRepository);

  @override
  Future<Either<Failure, List<PairwiseAlternativeInput>?>> call(
      UpdatePairwiseAlternativeInputParam param) async {
    return await _ahpRepository.updatePairwiseAlternativeInput(
      param.id,
      param.alternativeId,
      param.isLeftMoreImportant,
      param.referenceValue,
    );
  }
}

class UpdatePairwiseAlternativeInputParam {
  final String? id;
  final String? alternativeId;
  final bool isLeftMoreImportant;
  final int referenceValue;

  UpdatePairwiseAlternativeInputParam({
    required this.id,
    required this.alternativeId,
    required this.isLeftMoreImportant,
    required this.referenceValue,
  });
}
