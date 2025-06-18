import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/failure/failure_mapper.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/core/shared/mapper/ahp_result_mapper.dart';
import 'package:technq/src/features/history/data/datasource/history_remote_datasource.dart';
import 'package:technq/src/features/history/domain/repository/history_repository.dart';

class HistoryRepositoryImpl extends HistoryRepository {
  final HistoryRemoteDatasource _historyRemoteDatasource;

  HistoryRepositoryImpl(this._historyRemoteDatasource);

  @override
  Future<Either<Failure, List<AhpResultEntities>?>> getHistory(
      String? userId) async {
    try {
      final data = await _historyRemoteDatasource.getHistory(userId);

      if (data != null && data.isNotEmpty) {
        final result = data.map((e) => e.toEntities()).toList();

        return Right(result);
      }

      return Right(null);
    } catch (e) {
      return Left(FailureMapper.error(e));
    }
  }
}
