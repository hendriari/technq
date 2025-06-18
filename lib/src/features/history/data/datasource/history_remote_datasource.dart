import 'package:technq/src/core/failure/failure_mapper.dart';
import 'package:technq/src/core/services/firebase_services.dart';
import 'package:technq/src/core/shared/dto/ahp_result_dto.dart';

sealed class HistoryRemoteDatasource {
  Future<List<AhpResultDto>?> getHistory(String? userId);
}

class HistoryRemoteDatasourceImpl extends HistoryRemoteDatasource {
  final FirebaseServices _firebaseServices;

  HistoryRemoteDatasourceImpl(this._firebaseServices);

  @override
  Future<List<AhpResultDto>?> getHistory(String? userId) async {
    try {
      final data = await _firebaseServices.firebaseFirestore
          .collection('ahp_result')
          .where('user_id', isEqualTo: userId)
          .orderBy('date_update', descending: true)
          .get();

      if (data.docs.isNotEmpty) {
        final result = data.docs.map((e) => AhpResultDto.fromJson(e.data())).toList();

        return result;
      }

      return null;
    } catch (e) {
      print(e.toString());
      throw FailureMapper.error(e);
    }
  }
}
