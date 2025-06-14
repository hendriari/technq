import 'package:flutter_decision_making/ahp/domain/entities/criteria.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_alternative_input.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_comparison_input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ahp_pairwise_matrix_input_dto.freezed.dart';

@freezed
class AhpPairwiseMatrixInputDto with _$AhpPairwiseMatrixInputDto {
  factory AhpPairwiseMatrixInputDto({
    required List<PairwiseComparisonInput<Criteria>> inputCriteria,
    required List<PairwiseAlternativeInput> inputAlternative,
  }) = _AhpPairwiseMatrixInputDto;
}
