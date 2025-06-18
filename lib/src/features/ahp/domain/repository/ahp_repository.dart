import 'package:dartz/dartz.dart';
import 'package:flutter_decision_making/ahp/domain/entities/criteria.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_alternative_input.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_comparison_input.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/features/ahp/domain/entities/ahp_pairwise_matrix_input_entities.dart';

abstract class AhpRepository {
  Future<Either<Failure, AhpPairwiseMatrixInputEntities?>> getPairwiseInput(
      String? schoolType);

  Future<Either<Failure, List<PairwiseComparisonInput<Criteria>>?>>
      updatePairwiseCriteriaInput(
          String? id, bool isLeftMoreImportant, int referenceValue);

  Future<Either<Failure, List<PairwiseAlternativeInput>?>>
      updatePairwiseAlternativeInput(String? id, String? alternativeId,
          bool isLeftMoreImportant, int referenceValue);

  Future<Either<Failure, AhpResultEntities?>> getAhpResult(
      String? userId, String? userName);

  Future<Either<Failure, String?>> resetAhpData();
}
