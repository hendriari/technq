import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkTokenEvent() = CheckTokenEvent;

  const factory AuthEvent.createAccountEvent({
    required String name,
    required String schoolType,
    required String schoolName,
  }) = CreateAccountEvent;

  const factory AuthEvent.getDetailUserEvent() = GetDetailUserEvent;

  const factory AuthEvent.updateUserSchool({
    required String schoolName,
    required String schoolType,
  }) = UpdateUserSchoolEvent;
}
