import 'package:dartz/dartz.dart';
import 'package:flutter_decision_making/ahp/domain/entities/criteria.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_comparison_input.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/usecase/usecase.dart';
import 'package:technq/src/features/ahp/domain/repository/ahp_repository.dart';

class UpdatePairwiseCriteriaInputUsecase extends Usecase<
    List<PairwiseComparisonInput<Criteria>>?,
    UpdatePairwiseCriteriaInputParams> {
  final AhpRepository _ahpRepository;

  UpdatePairwiseCriteriaInputUsecase(this._ahpRepository);

  @override
  Future<Either<Failure, List<PairwiseComparisonInput<Criteria>>?>> call(
      UpdatePairwiseCriteriaInputParams param) async {
    return await _ahpRepository.updatePairwiseCriteriaInput(
      param.id,
      param.isLeftMoreImportant,
      param.referenceValue,
    );
  }
}

class UpdatePairwiseCriteriaInputParams {
  final String? id;
  final bool isLeftMoreImportant;
  final int referenceValue;

  UpdatePairwiseCriteriaInputParams({
    required this.id,
    required this.isLeftMoreImportant,
    required this.referenceValue,
  });
}
