import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/features/dashboard/domain/entities/fakultas_entities.dart';

abstract class DashboardRepository {
  Future<Either<Failure, List<FakultasEntities>?>> getListFakultas();
}
