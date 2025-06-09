import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/auth/domain/usecase/check_token_usecase.dart';
import 'package:technq/src/core/shared/auth/presentation/auth_event.dart';
import 'package:technq/src/core/shared/auth/presentation/auth_state.dart';
import 'package:technq/src/core/usecase/empty_param.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CheckTokenUsecase checkTokenUsecase;

  AuthBloc({
    required this.checkTokenUsecase,
  }) : super(AuthState.initial()) {
    on<AuthEvent>(_checkToken);
  }

  Future<void> _checkToken(AuthEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loadingCheckToken());

    Either<Failure, bool> result = await checkTokenUsecase.call(EmptyParam());

    result.fold((failure) {
      emit(AuthState.failedCheckToken(
          isAuthenticated: false, message: failure.message));
    }, (data) {
      emit(AuthState.successCheckToken(isAuthenticated: data));
    });
  }
}
