import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:technq/src/core/theme/app_text_theme.dart';
import 'package:technq/src/core/theme/app_theme_color.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/widgets/decorated_input_border_widget.dart';

class AppThemeData {
  final AppThemeColors _themeColors;
  final AppTextTheme _appTextTheme;

  AppThemeData(this._themeColors, this._appTextTheme);

  ThemeData theme({required bool darkTheme}) => ThemeData(
        brightness: darkTheme ? Brightness.dark : Brightness.light,
        primarySwatch:
            _themeColors.generateMaterialColor(CustomColors.primary100),
        textTheme: _appTextTheme.theme,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
        scaffoldBackgroundColor: darkTheme ? null : CustomColors.greyBgColor,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: DecoratedInputBorder(
            child: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            shadow: BoxShadow(
              color: Colors.grey.shade400.withValues(alpha: .4),
              blurRadius: 3,
            ),
          ),
        ),
      );
}
