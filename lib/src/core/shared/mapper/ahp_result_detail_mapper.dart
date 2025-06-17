import 'package:flutter_decision_making/ahp/domain/entities/ahp_result_detail.dart';
import 'package:technq/src/core/shared/dto/ahp_result_detail_dto.dart';

extension AhpResultDetailToDto on AhpResultDetail {
  AhpResultDetailDto toDto() =>
      AhpResultDetailDto(id: id, name: name, value: value);
}
