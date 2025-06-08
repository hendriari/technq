import 'dart:ui';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:technq/src/core/config/firenbase_config.dart';
import 'package:technq/src/core/technq.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final firebase = FirebaseConfig();
  await firebase.init();
  FlutterError.onError = (detail) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(detail);
  };
  PlatformDispatcher.instance.onError = (e, stack) {
    FirebaseCrashlytics.instance.recordError(e, stack, fatal: true);
    return true;
  };
  runApp(TechnqApp());
}
