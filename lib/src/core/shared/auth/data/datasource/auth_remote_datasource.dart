import 'package:technq/src/core/failure/failure_mapper.dart';
import 'package:technq/src/core/services/remote/firebase_services.dart';

abstract class AuthRemoteDatasource {
  Future<bool> checkToken();
}

class AuthRemoteDatasourceImpl extends AuthRemoteDatasource {
  final FirebaseServices _firebaseServices;

  AuthRemoteDatasourceImpl(this._firebaseServices);

  @override
  Future<bool> checkToken() async {
    try {
      final token =
          await _firebaseServices.firebaseAuth.currentUser?.getIdToken(true);

      if (token != null) {
        return true;
      }

      return false;
    } catch (e) {
      throw FailureMapper.firebaseError(e);
    }
  }
}
