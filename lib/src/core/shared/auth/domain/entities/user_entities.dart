import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entities.freezed.dart';

@freezed
class UserEntities with _$UserEntities {
  const factory UserEntities({
    String? name,
    String? email,
    bool? isAnonymous,
    String? schoolType,
    String? schoolName,
    String? photoUrl,
  }) = _UserEntities;
}
