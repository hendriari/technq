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

  const factory AuthState.failedCheckToken({
    @Default(null) UserEntities? user,
    required bool isAuthenticated,
    required String message,
  }) = _FailedCheckToken;
}
