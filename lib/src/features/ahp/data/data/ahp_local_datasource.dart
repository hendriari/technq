import 'package:flutter_decision_making/ahp/domain/entities/ahp_result.dart';
import 'package:flutter_decision_making/flutter_decision_making.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/features/ahp/data/dto/ahp_pairwise_matrix_input_dto.dart';

sealed class AhpLocalDatasource {
  Future<AhpPairwiseMatrixInputDto?> getPairwiseInput(String? schoolType);

  Future<List<PairwiseComparisonInput<Criteria>>?> updatePairwiseCriteriaInput(
    String? id,
    bool isLeftMoreImportant,
    int referenceValue,
  );

  Future<List<PairwiseAlternativeInput>?> updatePairwiseAlternativeInput(
    String? id,
    String? alternativeId,
    bool isLeftMoreImportant,
    int referenceValue,
  );

  Future<AhpResult?> getAhpResult();

  Future<String?> resetAhpData();
}

class AhpLocalDatasourceImpl extends AhpLocalDatasource {
  final FlutterDecisionMaking _decisionMaking;

  AhpLocalDatasourceImpl(this._decisionMaking);

  @override
  Future<AhpPairwiseMatrixInputDto?> getPairwiseInput(
      String? schoolType) async {
    try {
      if (schoolType != null) {
        final criteria = <Criteria>[];

        if (schoolType.toLowerCase() == 'sma') {
          for (int i = 0; i < 5; i++) {
            criteria.add(
              Criteria(
                name: i == 0
                    ? 'Matematika'
                    : i == 1
                        ? 'Fisika'
                        : i == 2
                            ? 'Kimia'
                            : i == 3
                                ? 'B. Inggris'
                                : 'Biologi',
              ),
            );
          }
        } else if (schoolType.toLowerCase() == 'smk') {
          for (int i = 0; i < 3; i++) {
            criteria.add(
              Criteria(
                name: i == 0
                    ? 'Orientasi Minat'
                    : i == 1
                        ? 'Fasilitas Praktik'
                        : 'Akreditasi',
              ),
            );
          }
        }

        final alternative = <Alternative>[];

        for (int i = 0; i < 6; i++) {
          alternative.add(Alternative(
            name: i == 0
                ? 'Sipil'
                : i == 1
                    ? 'Mesin'
                    : i == 2
                        ? 'Elektro'
                        : i == 3
                            ? 'Arsitektur'
                            : i == 4
                                ? 'Informatika'
                                : 'Teknologi Pangan',
          ));
        }

        await _decisionMaking.generateHierarchyAndPairwiseTemplate(
            listCriteria: criteria, listAlternative: alternative);

        return AhpPairwiseMatrixInputDto(
            inputCriteria: _decisionMaking.listPairwiseCriteriaInput,
            inputAlternative: _decisionMaking.listPairwiseAlternativeInput);
      }

      return null;
    } catch (e) {
      throw GeneralFailure(message: e.toString());
    }
  }

  @override
  Future<List<PairwiseComparisonInput<Criteria>>?> updatePairwiseCriteriaInput(
      String? id, bool isLeftMoreImportant, int referenceValue) async {
    try {
      _decisionMaking.updatePairwiseCriteriaValue(
          id: id,
          scale: referenceValue,
          isLeftMoreImportant: isLeftMoreImportant);

      return _decisionMaking.listPairwiseCriteriaInput;
    } catch (e) {
      throw GeneralFailure(message: e.toString());
    }
  }

  @override
  Future<List<PairwiseAlternativeInput>?> updatePairwiseAlternativeInput(
      String? id,
      String? alternativeId,
      bool isLeftMoreImportant,
      int referenceValue) async {
    try {
      _decisionMaking.updatePairwiseAlternativeValue(
        id: id,
        alternativeId: alternativeId,
        scale: referenceValue,
        isLeftMoreImportant: isLeftMoreImportant,
      );

      return _decisionMaking.listPairwiseAlternativeInput;
    } catch (e) {
      throw GeneralFailure(message: e.toString());
    }
  }

  @override
  Future<AhpResult?> getAhpResult() async {
    try {
      await _decisionMaking.generateResult();

      if (_decisionMaking.ahpResult != null) {
        return _decisionMaking.ahpResult;
      }

      return null;
    } catch (e) {
      throw GeneralFailure(message: e.toString());
    }
  }

  @override
  Future<String?> resetAhpData() async {
    try {
      _decisionMaking.reset();

      return 'Success reset ahp data';
    } catch (e) {
      throw GeneralFailure(message: e.toString());
    }
  }
}
