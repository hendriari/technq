import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technq/src/core/shared/entities/ahp_result_detail_entities.dart';

part 'ahp_result_entities.freezed.dart';

@freezed
class AhpResultEntities with _$AhpResultEntities {
  const factory AhpResultEntities({
    required String? userId,
    required String? userName,
    required String? dateUpdate,
    required List<AhpResultDetailEntities> results,
    required bool isConsistentCriteria,
    required double consistencyCriteriaRatio,
    required bool isConsistentAlternative,
    required double consistencyAlternativeRatio,
    required String? note,
  }) = _AhpResultEntities;
}
