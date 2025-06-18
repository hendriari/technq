import 'package:flutter_decision_making/ahp/domain/entities/ahp_result.dart';
import 'package:technq/src/core/shared/dto/ahp_result_dto.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/core/shared/mapper/ahp_result_detail_mapper.dart';

extension PackageAhpResultToDto on AhpResult {
  AhpResultDto fromPackageToDto(
    String? userId,
    String? userName,
    String? dateUpdate,
  ) =>
      AhpResultDto(
        userId: userId,
        userName: userName,
        dateUpdate: dateUpdate,
        results: results.map((e) => e.fromPackageToDto()).toList(),
        isConsistentCriteria: isConsistentCriteria,
        consistencyCriteriaRatio: consistencyCriteriaRatio,
        isConsistentAlternative: isConsistentAlternative,
        consistencyAlternativeRatio: consistencyAlternativeRatio,
        note: note,
      );
}

extension AhpResultToDto on AhpResultEntities {
  AhpResultDto toDto() => AhpResultDto(
        userId: userId,
        userName: userName,
        dateUpdate: dateUpdate,
        results: results.map((e) => e.toDto()).toList(),
        isConsistentCriteria: isConsistentCriteria,
        consistencyCriteriaRatio: consistencyCriteriaRatio,
        isConsistentAlternative: isConsistentAlternative,
        consistencyAlternativeRatio: consistencyAlternativeRatio,
        note: note,
      );
}

extension AhpResultToEntities on AhpResultDto {
  AhpResultEntities toEntities() => AhpResultEntities(
        userId: userId,
        userName: userName,
        dateUpdate: dateUpdate,
        results: results.map((e) => e.toEntities()).toList(),
        isConsistentCriteria: isConsistentCriteria,
        consistencyCriteriaRatio: consistencyCriteriaRatio,
        isConsistentAlternative: isConsistentAlternative,
        consistencyAlternativeRatio: consistencyAlternativeRatio,
        note: note,
      );
}
