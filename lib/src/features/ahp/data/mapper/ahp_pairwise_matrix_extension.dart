import 'package:technq/src/features/ahp/data/dto/ahp_pairwise_matrix_input_dto.dart';
import 'package:technq/src/features/ahp/domain/entities/ahp_pairwise_matrix_input_entities.dart';

extension AhpPairwiseMatrixInputToEntities on AhpPairwiseMatrixInputDto {
  AhpPairwiseMatrixInputEntities toEntities() => AhpPairwiseMatrixInputEntities(
        inputCriteria: inputCriteria,
        inputAlternative: inputAlternative,
      );
}

extension AhpPairwiseMatrixToDto on AhpPairwiseMatrixInputEntities {
  AhpPairwiseMatrixInputDto toDto() => AhpPairwiseMatrixInputDto(
        inputCriteria: inputCriteria,
        inputAlternative: inputAlternative,
      );
}
