import 'package:flutter_decision_making/ahp/domain/entities/ahp_result.dart';
import 'package:flutter_decision_making/flutter_decision_making.dart';
import 'package:technq/src/core/failure/failure_mapper.dart';
import 'package:technq/src/core/services/firebase_services.dart';
import 'package:technq/src/core/shared/mapper/ahp_result_mapper.dart';
import 'package:technq/src/features/ahp/data/dto/ahp_pairwise_matrix_input_dto.dart';
import 'package:uuid/uuid.dart';

sealed class AhpRemoteDatasource {
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

  Future<AhpResult?> getAhpResult(String? userId, String? userName);

  Future<String?> resetAhpData();
}

class AhpRemoteDatasourceImpl extends AhpRemoteDatasource {
  final FlutterDecisionMaking _decisionMaking;
  final FirebaseServices _firebaseServices;

  AhpRemoteDatasourceImpl(
    this._decisionMaking,
    this._firebaseServices,
  );

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
      throw FailureMapper.error(e);
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
      throw FailureMapper.error(e);
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
      throw FailureMapper.error(e);
    }
  }

  @override
  Future<AhpResult?> getAhpResult(
    String? userId,
    String? userName,
  ) async {
    try {
      await _decisionMaking.generateResult();

      if (_decisionMaking.ahpResult != null) {
        final timestamp = DateTime.now().toString();
        final data =
            _decisionMaking.ahpResult?.toDto(userId, userName, timestamp);

        if (data != null) {
          await _firebaseServices.firebaseFirestore
              .collection('ahp_result')
              .doc(Uuid().v4())
              .set(data.toJson());
        }

        return _decisionMaking.ahpResult;
      }

      return null;
    } catch (e) {
      throw FailureMapper.error(e);
    }
  }

  @override
  Future<String?> resetAhpData() async {
    try {
      _decisionMaking.reset();

      return 'Success reset ahp data';
    } catch (e) {
      throw FailureMapper.error(e);
    }
  }
}
