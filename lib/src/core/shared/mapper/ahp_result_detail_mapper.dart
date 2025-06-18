import 'package:flutter_decision_making/ahp/domain/entities/ahp_result_detail.dart';
import 'package:technq/src/core/shared/dto/ahp_result_detail_dto.dart';
import 'package:technq/src/core/shared/entities/ahp_result_detail_entities.dart';

extension PackageAhpResultDetailToDto on AhpResultDetail {
  AhpResultDetailDto fromPackageToDto() =>
      AhpResultDetailDto(id: id, name: name, value: value);
}

extension AhpResultDetailToEntities on AhpResultDetailDto {
  AhpResultDetailEntities toEntities() => AhpResultDetailEntities(
        id: id,
        name: name,
        value: value,
      );
}

extension AhpResultDetailToDto on AhpResultDetailEntities {
  AhpResultDetailDto toDto() => AhpResultDetailDto(
        id: id,
        name: name,
        value: value,
      );
}
