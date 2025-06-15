import 'package:technq/src/core/failure/failure_mapper.dart';
import 'package:technq/src/core/services/firebase_services.dart';
import 'package:technq/src/core/shared/auth/data/dto/user_dto.dart';

abstract class AuthRemoteDatasource {
  Future<bool> checkToken();

  Future<UserDto?> createUser(
    String? name,
    String? schoolType,
    String? schoolName,
  );

  Future<UserDto?> getUserData();

  Future<String?> updateSchool(String schoolName, String schoolType);
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

  @override
  Future<UserDto?> createUser(
      String? name, String? schoolType, String? schoolName) async {
    try {
      final credential =
          await _firebaseServices.firebaseAuth.signInAnonymously();

      if (credential.user != null) {
        final credUser = credential.user;

        final userDto = UserDto(
          id: credUser?.uid,
          name: name,
          schoolType: schoolType,
          schoolName: schoolName,
        );

        await _firebaseServices.firebaseFirestore
            .collection('user')
            .doc(credUser?.uid)
            .set(userDto.toJson());

        return userDto;
      }

      return null;
    } catch (e) {
      throw FailureMapper.firebaseError(e);
    }
  }

  @override
  Future<UserDto?> getUserData() async {
    try {
      final user = _firebaseServices.firebaseAuth.currentUser;

      if (user != null) {
        final response = await _firebaseServices.firebaseFirestore
            .collection('user')
            .doc(user.uid)
            .get();

        if (response.data() != null) {
          final result = UserDto.fromJson(response.data()!);
          return result;
        }
      }

      return null;
    } catch (e) {
      throw FailureMapper.firebaseError(e);
    }
  }

  @override
  Future<String?> updateSchool(String schoolName, String schoolType) async {
    try {
      final user = _firebaseServices.firebaseAuth.currentUser;

      if (user != null) {
        await _firebaseServices.firebaseFirestore
            .collection('user')
            .doc(user.uid)
            .update({
          "school_name": schoolName,
          "school_type": schoolType,
        });

        return 'Success update school data';
      }

      return "User not found";
    } catch (e) {
      throw FailureMapper.firebaseError(e);
    }
  }
}
