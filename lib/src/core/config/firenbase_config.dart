import 'package:firebase_core/firebase_core.dart';
import 'package:technq/src/core/config/firebase_options_dev.dart' as dev;
import 'package:technq/src/core/config/firebase_options_prod.dart' as prod;

class FirebaseConfig {
  Future<FirebaseApp> init() async {
    try {
      final isProduction = bool.fromEnvironment(
        'IS_PRODUCTION',
        defaultValue: false,
      );
      return Firebase.initializeApp(
        options: isProduction
            ? prod.DefaultFirebaseOptions.currentPlatform
            : dev.DefaultFirebaseOptions.currentPlatform,
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
