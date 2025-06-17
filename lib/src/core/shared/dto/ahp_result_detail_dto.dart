import 'package:freezed_annotation/freezed_annotation.dart';

part 'ahp_result_detail_dto.freezed.dart';
part 'ahp_result_detail_dto.g.dart';

@freezed
sealed class AhpResultDetailDto with _$AhpResultDetailDto {
  const factory AhpResultDetailDto({
    required String? id,
    required String? name,
    required double? value,
  }) = _AhpResultDetailDto;

  factory AhpResultDetailDto.fromJson(Map<String, dynamic> json) =>
      _$AhpResultDetailDtoFromJson(json);
}
