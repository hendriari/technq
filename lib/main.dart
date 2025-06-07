import 'dart:ui';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:technq/src/core/config/firebase/firenbase_config.dart';
import 'package:technq/src/core/technq.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final firebase = FirebaseConfig();
  await firebase.init();
  FlutterError.onError = (detail) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(detail);
  };
  PlatformDispatcher.instance.onError = (e, stack) {
    FirebaseCrashlytics.instance.recordError(e, stack, fatal: true);
    return true;
  };
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(TechnqApp());
}
