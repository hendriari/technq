import 'package:flutter_decision_making/ahp/domain/entities/ahp_result.dart';
import 'package:technq/src/core/shared/dto/ahp_result_dto.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/core/shared/mapper/ahp_result_detail_mapper.dart';
import 'package:uuid/uuid.dart';

extension PackageAhpResultToDto on AhpResult {
  AhpResultDto fromPackageToDto(
    String? userId,
    String? userName,
    String? dateUpdate,
  ) =>
      AhpResultDto(
        id: Uuid().v4(),
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
        id: id,
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

extension AhpResultEntitiesToMap on AhpResultEntities {
  Map<String, dynamic> toMap() => toDto().toJson();
}

extension AhpResultEntitiesFromMap on AhpResultEntities {
  static AhpResultEntities fromMap(Map<String, dynamic> map) {
    final data = AhpResultDto.fromJson(map);
    return AhpResultEntities(
      id: data.id,
      userId: data.userId,
      userName: data.userName,
      dateUpdate: data.dateUpdate,
      results: data.results.map((e) => e.toEntities()).toList(),
      isConsistentCriteria: data.isConsistentCriteria,
      consistencyCriteriaRatio: data.consistencyCriteriaRatio,
      isConsistentAlternative: data.isConsistentAlternative,
      consistencyAlternativeRatio: data.consistencyAlternativeRatio,
      note: data.note,
    );
  }
}

extension AhpResultToEntities on AhpResultDto {
  AhpResultEntities toEntities() => AhpResultEntities(
        id: id,
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
