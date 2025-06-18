import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/core/usecase/usecase.dart';
import 'package:technq/src/features/history/domain/repository/history_repository.dart';

class GetHistoryUsecase extends Usecase<List<AhpResultEntities>?, String?> {
  final HistoryRepository _historyRepository;

  GetHistoryUsecase(this._historyRepository);

  @override
  Future<Either<Failure, List<AhpResultEntities>?>> call(String? userId) async {
    return await _historyRepository.getHistory(userId);
  }
}
