import 'package:freezed_annotation/freezed_annotation.dart';

part 'fakultas_entities.freezed.dart';

@freezed
class FakultasEntities with _$FakultasEntities {
  const factory FakultasEntities({
    required String? id,
    required String? image,
    required String? name,
    required String? description,
  }) = _FakultasEntities;
}
