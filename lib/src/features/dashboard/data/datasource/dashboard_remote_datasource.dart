import 'package:intl/intl.dart';
import 'package:technq/src/core/failure/failure_mapper.dart';
import 'package:technq/src/core/services/firebase_services.dart';
import 'package:technq/src/core/shared/dto/ahp_result_dto.dart';

sealed class DashboardRemoteDatasource {
  Future<List<AhpResultDto>?> getListReview();
}

class DashboardRemoteDatasourceImpl extends DashboardRemoteDatasource {
  final FirebaseServices _firebaseServices;

  DashboardRemoteDatasourceImpl(this._firebaseServices);

  @override
  Future<List<AhpResultDto>?> getListReview() async {
    try {
      final now = DateFormat('yyyy-MM-dd HH:mm:ss.SSSSSS').format(DateTime.now());


      final data = await _firebaseServices.firebaseFirestore
          .collection('ahp_result')
          .where('date_update', isLessThanOrEqualTo: now)
          .orderBy('date_update', descending: true)
          .limit(50)
          .get();

      if (data.docs.isNotEmpty) {
        final result =
            data.docs.map((e) => AhpResultDto.fromJson(e.data())).toList();
        return result;
      }

      return null;
    } catch (e) {
      throw FailureMapper.error(e);
    }
  }
}
