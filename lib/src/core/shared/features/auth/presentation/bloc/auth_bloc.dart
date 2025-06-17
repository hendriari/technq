import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/features/auth/domain/entities/user_entities.dart';
import 'package:technq/src/core/shared/features/auth/domain/usecase/check_token_usecase.dart';
import 'package:technq/src/core/shared/features/auth/domain/usecase/create_account_usecase.dart';
import 'package:technq/src/core/shared/features/auth/domain/usecase/get_user_data.usecase.dart';
import 'package:technq/src/core/shared/features/auth/domain/usecase/update_user_school_usecase.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_event.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_state.dart';
import 'package:technq/src/core/usecase/empty_param.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CheckTokenUsecase checkTokenUsecase;
  final CreateAccountUsecase createAccountUsecase;
  final GetUserDataUsecase getUserDataUsecase;
  final UpdateUserSchoolUsecase updateUserSchoolUsecase;

  AuthBloc({
    required this.checkTokenUsecase,
    required this.createAccountUsecase,
    required this.getUserDataUsecase,
    required this.updateUserSchoolUsecase,
  }) : super(AuthState.initial()) {
    on<CheckTokenEvent>(_checkToken);
    on<CreateAccountEvent>(_createAccount);
    on<GetDetailUserEvent>(_getDetailUser);
    on<UpdateUserSchoolEvent>(_updateSchool);
  }

  Future<void> _checkToken(AuthEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loadingCheckToken());

    Either<Failure, bool> result = await checkTokenUsecase.call(EmptyParam());

    result.fold((failure) {
      emit(AuthState.failed(message: failure.message));
    }, (data) {
      emit(AuthState.successCheckToken(isAuthenticated: data));
    });
  }

  Future<void> _createAccount(
      CreateAccountEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loadingCreateAccount());

    Either<Failure, UserEntities?> result = await createAccountUsecase.call(
        CreateAccountParams(
            name: event.name,
            schoolName: event.schoolName,
            schoolType: event.schoolType));

    result.fold(
        (failure) =>
            emit(AuthState.failed(message: failure.message, user: state.user)),
        (data) {
      emit(AuthState.successCreateAccount(user: data));
    });
  }

  Future<void> _getDetailUser(
      GetDetailUserEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loadingGetAccount(user: state.user));

    Either<Failure, UserEntities?> result =
        await getUserDataUsecase.call(EmptyParam());

    result.fold((failure) => AuthState.failed(message: failure.message),
        (data) {
      emit(AuthState.successGetAccount(user: data));
    });
  }

  Future<void> _updateSchool(
      UpdateUserSchoolEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loadingUpdateSchool(user: state.user));

    Either<Failure, String?> result = await updateUserSchoolUsecase.call(
        UpdateUserSchoolParams(
            schoolName: event.schoolName, schoolType: event.schoolType));

    result.fold(
        (failure) =>
            emit(AuthState.failed(message: failure.message, user: state.user)),
        (data) {
      emit(
        AuthState.successUpdateSchool(
          message: data ?? 'Something wrong',
          user: state.user?.copyWith(
              schoolName: event.schoolName, schoolType: event.schoolType),
        ),
      );
    });
  }
}
