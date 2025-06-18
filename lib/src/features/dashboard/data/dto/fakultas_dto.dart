import 'package:freezed_annotation/freezed_annotation.dart';

part 'fakultas_dto.freezed.dart';
part 'fakultas_dto.g.dart';

@freezed
class FakultasDto with _$FakultasDto {
  const factory FakultasDto({
    required String? id,
    required String? image,
    required String? name,
    required String? description,
  }) = _FakultasDto;

  factory FakultasDto.fromJson(Map<String, dynamic> json) =>
      _$FakultasDtoFromJson(json);
}
