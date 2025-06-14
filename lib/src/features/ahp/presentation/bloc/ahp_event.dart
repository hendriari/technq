import 'package:freezed_annotation/freezed_annotation.dart';

part 'ahp_event.freezed.dart';

@freezed
sealed class AhpEvent with _$AhpEvent {
  const factory AhpEvent.generatePairwiseMatrixInput({
    required String schoolType,
  }) = GeneratePairwiseMatrixInputEvent;

  const factory AhpEvent.updatePairwiseMatrixCriteria({
    required String? id,
    required bool isLeftMoreImportant,
    required int referenceValue,
  }) = UpdatePairwiseMatrixCriteriaEvent;

  const factory AhpEvent.updatePairwiseMatrixAlternative({
    required String? id,
    required String? alternativeId,
    required bool isLeftMoreImportant,
    required int referenceValue,
  }) = UpdatePairwiseMatrixAlternativeEvent;

  const factory AhpEvent.getAhpResult() = GetAhpResultEvent;

  const factory AhpEvent.resetAhpResult() = ResetAhpResultEvent;
}
