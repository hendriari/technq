import 'package:flutter_decision_making/ahp/domain/entities/criteria.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_alternative_input.dart';
import 'package:flutter_decision_making/ahp/domain/entities/pairwise_comparison_input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ahp_pairwise_matrix_input_entities.freezed.dart';

@freezed
class AhpPairwiseMatrixInputEntities with _$AhpPairwiseMatrixInputEntities {
  factory AhpPairwiseMatrixInputEntities({
    @Default([]) List<PairwiseComparisonInput<Criteria>> inputCriteria,
    @Default([]) List<PairwiseAlternativeInput> inputAlternative,
  }) = _AhpPairwiseMatrixInputEntities;
}
