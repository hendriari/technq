import 'dart:math';

import 'package:flutter/material.dart';

class AppThemeColors {
  MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.toARGB32(), {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  Color generateSecondaryColor(Color primaryColor) {
    return tintColor(primaryColor, 0.5);
  }

  Color generateSurfaceColor(Color primaryColor) {
    return shadeColor(primaryColor, 0.1);
  }

  int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.r.round(), factor),
      tintValue(color.g.round(), factor),
      tintValue(color.b.round(), factor),
      1);

  int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.r.round(), factor),
      shadeValue(color.g.round(), factor),
      shadeValue(color.b.round(), factor),
      1);
}
