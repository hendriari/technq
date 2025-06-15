import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:technq/src/core/config/firenbase_config.dart';
import 'package:technq/src/core/injection/injector.dart';
import 'package:technq/src/core/shared/auth/presentation/bloc/auth_bloc.dart';
import 'package:technq/src/core/shared/brightness_theme/presentation/bloc/brightness_theme_bloc.dart';
import 'package:technq/src/core/shared/menu/bloc/menu_bloc.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_bloc.dart';
import 'package:technq/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:technq/src/technq_app.dart';
import 'package:technq/src/technq_bloc_observer.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  getInjectableInit();
  final firebase = FirebaseConfig();
  await firebase.init();
  Bloc.observer = TechnqBlocObserver();
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
  MultiBlocProvider initBloc() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => BrightnessThemeBloc(
              getCurrentThemeUsecase: getIt(), saveThemeUsecase: getIt()),
        ),
        BlocProvider(
          create: (_) => AuthBloc(
              checkTokenUsecase: getIt(),
              createAccountUsecase: getIt(),
              getUserDataUsecase: getIt(),
              updateUserSchoolUsecase: getIt()),
        ),
        BlocProvider(create: (_) => MenuBloc()),
        BlocProvider(
          create: (_) => DashboardBloc(getListFakultasUsecase: getIt()),
        ),
        BlocProvider(
          create: (_) => AhpBloc(
              getAhpResultUsecase: getIt(),
              updatePairwiseCriteriaInputUsecase: getIt(),
              updatePairwiseAlternativeInputUsecase: getIt(),
              getPairwiseInputUsecase: getIt(),
              resetAhpDataUsecase: getIt()),
        ),
      ],
      child: TechnqApp(),
    );
  }

  runApp(
    DevicePreview(
      builder: (context) => initBloc(),
    ),
    // initBloc(),
  );
}
