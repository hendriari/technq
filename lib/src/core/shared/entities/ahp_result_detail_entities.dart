import 'package:freezed_annotation/freezed_annotation.dart';

part 'ahp_result_detail_entities.freezed.dart';

@freezed
class AhpResultDetailEntities with _$AhpResultDetailEntities {
  const factory AhpResultDetailEntities({
    required String? id,
    required String? name,
    required double? value,
  }) = _AhpResultDetail;
}
