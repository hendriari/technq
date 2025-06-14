import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/usecase/empty_param.dart';
import 'package:technq/src/core/usecase/usecase.dart';
import 'package:technq/src/features/dashboard/domain/entities/fakultas_entities.dart';
import 'package:technq/src/features/dashboard/domain/repository/dashboard_repository.dart';

class GetListFakultasUsecase
    extends Usecase<List<FakultasEntities>?, EmptyParam> {
  final DashboardRepository _dashboardRepository;

  GetListFakultasUsecase(this._dashboardRepository);

  @override
  Future<Either<Failure, List<FakultasEntities>?>> call(
      EmptyParam param) async {
    return await _dashboardRepository.getListFakultas();
  }
}
