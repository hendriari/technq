import 'package:freezed_annotation/freezed_annotation.dart';

import 'ahp_result_detail_dto.dart';

part 'ahp_result_dto.freezed.dart';
part 'ahp_result_dto.g.dart';

@freezed
class AhpResultDto with _$AhpResultDto {
  const factory AhpResultDto({
    required String? userId,
    required String? userName,
    required String? dateUpdate,
    required List<AhpResultDetailDto> results,
    required bool isConsistentCriteria,
    required double consistencyCriteriaRatio,
    required bool isConsistentAlternative,
    required double consistencyAlternativeRatio,
    required String? note,
  }) = _AhpResultDto;

  factory AhpResultDto.fromJson(Map<String, dynamic> json) =>
      _$AhpResultDtoFromJson(json);
}
