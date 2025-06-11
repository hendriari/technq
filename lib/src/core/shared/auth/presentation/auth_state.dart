import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technq/src/core/shared/auth/domain/entities/user_entities.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial({
    @Default(null) UserEntities? user,
  }) = _Init;

  const factory AuthState.loadingCheckToken({
    @Default(null) UserEntities? user,
  }) = _LoadingCheckToken;

  const factory AuthState.successCheckToken({
    @Default(null) UserEntities? user,
    required bool isAuthenticated,
  }) = _SuccessCheckToken;

  const factory AuthState.loadingCreateAccount({
    @Default(null) UserEntities? user,
  }) = _LoadingCreateAccount;

  const factory AuthState.successCreateAccount({
    @Default(null) UserEntities? user,
  }) = _SuccessCreateAccount;

  const factory AuthState.loadingGetAccount({
    @Default(null) UserEntities? user,
  }) = _LoadingGetAccount;

  const factory AuthState.successGetAccount({
    @Default(null) UserEntities? user,
  }) = _SuccessGetAccount;

  const factory AuthState.failed({
    @Default(null) UserEntities? user,
    required String message,
  }) = _Failed;
}
