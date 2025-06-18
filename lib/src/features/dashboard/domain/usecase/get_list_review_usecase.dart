import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/core/usecase/empty_param.dart';
import 'package:technq/src/core/usecase/usecase.dart';
import 'package:technq/src/features/dashboard/domain/repository/dashboard_repository.dart';

class GetListReviewUsecase
    extends Usecase<List<AhpResultEntities>?, EmptyParam> {
  final DashboardRepository _dashboardRepository;

  GetListReviewUsecase(this._dashboardRepository);

  @override
  Future<Either<Failure, List<AhpResultEntities>?>> call(
      EmptyParam param) async {
    return await _dashboardRepository.getListReview();
  }
}
