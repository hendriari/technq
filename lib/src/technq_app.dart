import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:technq/src/core/routes/go_routers_navigator.dart';
import 'package:technq/src/core/theme/app_text_theme.dart';
import 'package:technq/src/core/theme/app_theme_color.dart';
import 'package:technq/src/core/theme/app_theme_data.dart';

import 'core/shared/features/brightness_theme/presentation/bloc/brightness_theme_bloc.dart';
import 'core/shared/features/brightness_theme/presentation/bloc/brightness_theme_event.dart';
import 'core/shared/features/brightness_theme/presentation/bloc/brightness_theme_state.dart';

class TechnqApp extends StatefulWidget {
  const TechnqApp({super.key});

  @override
  State<TechnqApp> createState() => _TechnqAppState();
}

class _TechnqAppState extends State<TechnqApp> {
  late GoRoutersNavigator _routers;
  late AppThemeColors _themeColors;
  late AppTextTheme _textTheme;
  late AppThemeData _themeData;

  @override
  void initState() {
    super.initState();
    _themeColors = AppThemeColors();
    _textTheme = AppTextTheme();
    _themeData = AppThemeData(_themeColors, _textTheme);
    _routers = GoRoutersNavigator();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context.read<BrightnessThemeBloc>().add(GetCurrentThemeEvent());
      await Future.delayed(Duration(seconds: 2), () {
        FlutterNativeSplash.remove();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        child: BlocConsumer<BrightnessThemeBloc, BrightnessThemeState>(
          listener: (context, state) {
            state.whenOrNull(loadedBrightness: (isDark) {
              if (isDark == null) {
                final theme = ThemeMode.system;
                final isDark = theme == ThemeMode.dark;
                context
                    .read<BrightnessThemeBloc>()
                    .add(SaveCurrentThemeEvent(isDark));
              }
            });
          },
          builder: (context, state) {
            return MaterialApp.router(
              themeMode: state.isDark == null
                  ? ThemeMode.system
                  : (state.isDark! ? ThemeMode.dark : ThemeMode.light),
              theme: _themeData.theme(darkTheme: false),
              darkTheme: _themeData.theme(darkTheme: true),
              routerConfig: _routers.routeConfig,
              debugShowCheckedModeBanner: false,
              supportedLocales: const [
                Locale('id'),
                Locale('en'),
              ],
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: Locale('id'),
              builder: (context, widget) => MaxWidthBox(
                maxWidth: 1920,
                child: ResponsiveScaledBox(
                  width: ResponsiveValue<double>(context,
                          conditionalValues: [
                            const Condition.equals(name: MOBILE, value: 450),
                            const Condition.between(
                                start: 451, end: 800, value: 800),
                            const Condition.between(
                                start: 801, end: 1100, value: 1100),
                            const Condition.between(
                                start: 1101, end: 1920, value: 1920),
                          ],
                          defaultValue: 360)
                      .value,
                  child: BouncingScrollWrapper.builder(
                    context,
                    widget ?? SizedBox.shrink(),
                    dragWithMouse: true,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
