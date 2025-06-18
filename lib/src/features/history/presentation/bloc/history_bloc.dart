import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/features/history/domain/usecase/get_history_usecase.dart';
import 'package:technq/src/features/history/presentation/bloc/history_event.dart';
import 'package:technq/src/features/history/presentation/bloc/history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final GetHistoryUsecase getHistoryUsecase;

  HistoryBloc({
    required this.getHistoryUsecase,
  }) : super(HistoryState.init()) {
    on<GetHistoryEvent>(_getHistory);
  }

  Future<void> _getHistory(
      GetHistoryEvent event, Emitter<HistoryState> emit) async {
    emit(HistoryState.loadingGetHistory());

    Either<Failure, List<AhpResultEntities>?> result =
        await getHistoryUsecase.call(event.userId);

    result.fold(
        (failure) => emit(
            HistoryState.failed(message: failure.message, data: state.data)),
        (data) {
      emit(HistoryState.successGetHistory(data: data));
    });
  }
}
