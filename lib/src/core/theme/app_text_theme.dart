import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  TextTheme theme = TextTheme(
    displayLarge:
        GoogleFonts.poppins(fontWeight: FontWeight.w300, letterSpacing: -1.5),
    displayMedium:
        GoogleFonts.poppins(fontWeight: FontWeight.w300, letterSpacing: -0.5),
    displaySmall: GoogleFonts.poppins(
      fontWeight: FontWeight.w800,
    ),
    headlineMedium:
        GoogleFonts.poppins(fontWeight: FontWeight.w600, letterSpacing: 0.25),
    headlineSmall: GoogleFonts.poppins(fontWeight: FontWeight.w500),
    titleLarge:
        GoogleFonts.poppins(fontWeight: FontWeight.w600, letterSpacing: 0.15),
    titleMedium:
        GoogleFonts.poppins(fontWeight: FontWeight.w400, letterSpacing: 0.1),
    titleSmall:
        GoogleFonts.poppins(fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyLarge:
        GoogleFonts.poppins(fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyMedium:
        GoogleFonts.poppins(fontWeight: FontWeight.w400, letterSpacing: 0.25),
    labelLarge:
        GoogleFonts.poppins(fontWeight: FontWeight.w500, letterSpacing: 1.25),
    bodySmall:
        GoogleFonts.poppins(fontWeight: FontWeight.w400, letterSpacing: 0.4),
    labelSmall:
        GoogleFonts.poppins(fontWeight: FontWeight.w400, letterSpacing: 0.4),
  );
}
