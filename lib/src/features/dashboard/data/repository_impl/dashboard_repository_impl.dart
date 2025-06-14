import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/features/dashboard/data/datasource/dashboard_local_datasource.dart';
import 'package:technq/src/features/dashboard/data/mapper/fakultas_mapper.dart';
import 'package:technq/src/features/dashboard/domain/entities/fakultas_entities.dart';
import 'package:technq/src/features/dashboard/domain/repository/dashboard_repository.dart';

class DashboardRepositoryImpl extends DashboardRepository {
  final DashboardLocalDatasource _dashboardLocalDatasource;

  DashboardRepositoryImpl(this._dashboardLocalDatasource);

  @override
  Future<Either<Failure, List<FakultasEntities>?>> getListFakultas() async {
    try {
      final result = await _dashboardLocalDatasource.generateFakultas();

      if (result != null && result.isNotEmpty) {
        final data = result.map((e) => e.toEntities()).toList();

        return Right(data);
      }

      return Right(null);
    } catch (e) {
      return Left(GeneralFailure(message: e.toString()));
    }
  }
}
