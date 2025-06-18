import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';

abstract class HistoryRepository {
  Future<Either<Failure, List<AhpResultEntities>?>> getHistory(String? userId);
}
