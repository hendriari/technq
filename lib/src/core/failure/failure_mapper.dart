import 'package:firebase_auth/firebase_auth.dart';
import 'failure.dart';

class FailureMapper {
  static Failure firebaseError(Object e) {
    if (e is FirebaseAuthException) {
      return Failure.serverFailure(message: 'Auth error: ${e.code}');
    } else if (e is FirebaseException) {
      if (e.plugin == 'cloud_firestore') {
        return Failure.serverFailure(message: 'Firestore error: ${e.code}');
      } else if (e.plugin == 'firebase_storage') {
        return Failure.serverFailure(message: 'Storage error: ${e.code}');
      } else {
        return Failure.serverFailure(message: 'Firebase error: ${e.message ?? 'Unknown'}');
      }
    } else if (e is Exception) {
      final message = e.toString().toLowerCase();
      if (message.contains('network') || message.contains('socket')) {
        return Failure.connectionFailure(message: 'Koneksi jaringan bermasalah.');
      }
      return Failure.generalFailure(message: e.toString());
    } else {
      return Failure.generalFailure(message: 'Terjadi kesalahan tak terduga.');
    }
  }
}
