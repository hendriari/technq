import 'package:dartz/dartz.dart';
import 'package:flutter_decision_making/ahp/domain/entities/criteria.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_alternative_input.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_comparison_input.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/failure/failure_mapper.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/core/shared/mapper/ahp_result_mapper.dart';
import 'package:technq/src/features/ahp/data/data/ahp_remote_datasource.dart';
import 'package:technq/src/features/ahp/data/mapper/ahp_pairwise_matrix_extension.dart';
import 'package:technq/src/features/ahp/domain/entities/ahp_pairwise_matrix_input_entities.dart';
import 'package:technq/src/features/ahp/domain/repository/ahp_repository.dart';

class AhpRepositoryImpl extends AhpRepository {
  final AhpRemoteDatasource _ahpLocalDatasource;

  AhpRepositoryImpl(this._ahpLocalDatasource);

  @override
  Future<Either<Failure, AhpPairwiseMatrixInputEntities?>> getPairwiseInput(
      String? schoolType) async {
    try {
      final result = await _ahpLocalDatasource.getPairwiseInput(schoolType);

      if (result != null) {
        return Right(result.toEntities());
      }

      return Right(null);
    } catch (e) {
      return Left(FailureMapper.error(e));
    }
  }

  @override
  Future<Either<Failure, List<PairwiseComparisonInput<Criteria>>?>>
      updatePairwiseCriteriaInput(
          String? id, bool isLeftMoreImportant, int referenceValue) async {
    try {
      final result = await _ahpLocalDatasource.updatePairwiseCriteriaInput(
          id, isLeftMoreImportant, referenceValue);

      return Right(result);
    } catch (e) {
      return Left(FailureMapper.error(e));
    }
  }

  @override
  Future<Either<Failure, List<PairwiseAlternativeInput>?>>
      updatePairwiseAlternativeInput(String? id, String? alternativeId,
          bool isLeftMoreImportant, int referenceValue) async {
    try {
      final result = await _ahpLocalDatasource.updatePairwiseAlternativeInput(
          id, alternativeId, isLeftMoreImportant, referenceValue);

      return Right(result);
    } catch (e) {
      return Left(FailureMapper.error(e));
    }
  }

  @override
  Future<Either<Failure, AhpResultEntities?>> getAhpResult(
      String? userId, String? userName) async {
    try {
      final result = await _ahpLocalDatasource.getAhpResult(userId, userName);

      if (result != null) {
        final data = result.toEntities();
        return Right(data);
      }

      return Right(null);
    } catch (e) {
      return Left(FailureMapper.error(e));
    }
  }

  @override
  Future<Either<Failure, String?>> resetAhpData() async {
    try {
      final result = await _ahpLocalDatasource.resetAhpData();

      return Right(result);
    } catch (e) {
      return Left(FailureMapper.error(e));
    }
  }
}
