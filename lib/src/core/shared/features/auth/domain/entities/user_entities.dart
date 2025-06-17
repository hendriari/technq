import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entities.freezed.dart';

@freezed
class UserEntities with _$UserEntities {
  const factory UserEntities({
    String? id,
    String? name,
    String? schoolType,
    String? schoolName,
  }) = _UserEntities;
}
