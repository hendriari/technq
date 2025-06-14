import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/usecase/empty_param.dart';
import 'package:technq/src/features/dashboard/domain/entities/fakultas_entities.dart';
import 'package:technq/src/features/dashboard/domain/usecase/get_list_fakultas_usecase.dart';
import 'package:technq/src/features/dashboard/presentation/bloc/dashboard_event.dart';
import 'package:technq/src/features/dashboard/presentation/bloc/dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetListFakultasUsecase getListFakultasUsecase;

  DashboardBloc({
    required this.getListFakultasUsecase,
  }) : super(DashboardState.init()) {
    on<GetFakultasEvent>(_getFakultas);
  }

  Future<void> _getFakultas(
      GetFakultasEvent event, Emitter<DashboardState> emit) async {
    emit(DashboardState.loadingGetFakultas());

    Either<Failure, List<FakultasEntities>?> result =
        await getListFakultasUsecase.call(EmptyParam());

    result.fold(
        (failure) => emit(DashboardState.failed(message: failure.message)),
        (data) {
      emit(DashboardState.successGetFakultas(listFakultas: data));
    });
  }
}
