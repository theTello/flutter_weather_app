import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Define all light theme data
final ThemeData lightTheme = FlexThemeData.light(
  colors: const FlexSchemeColor(
    primary: Color(0xff0984e3),
    primaryContainer: Color(0xff004881),
    secondary: Color(0xfffdcb6e),
    secondaryContainer: Color(0xffffc221),
    tertiary: Color(0xFF2D3436),
    tertiaryContainer: Color(0xFF636E72),
    error: Color(0xffb00020),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  scaffoldBackground: const Color(0xFFf9f9f9),
  blendLevel: 9,
  textTheme: TextTheme(
    /// Default style for buttons in light theme
    titleLarge: GoogleFonts.dmSans(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      height: 32 / 28,
      color: const Color(0xFF2D3436),
    ),

    /// Default style for buttons in light theme
    titleMedium: GoogleFonts.dmSans(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      height: 28 / 24,
      color: const Color(0xFF2D3436),
    ),

    /// Default style for buttons in light theme
    titleSmall: GoogleFonts.dmSans(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      height: 24 / 20,
      color: const Color(0xFF2D3436),
    ),

    /// Default style for buttons in light theme
    labelLarge: GoogleFonts.dmSans(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      height: 20 / 18,
      color: Colors.white,
    ),

    /// Default style for Large body texts
    bodyLarge: GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 20 / 16,
      color: const Color(0xFF2D3436),
    ),

    /// Default style for small body texts
    bodyMedium: GoogleFonts.dmSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 18 / 14,
      color: const Color(0xFF636E72),
    ),

    /// Default style for small body texts
    bodySmall: GoogleFonts.dmSans(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 16 / 12,
      color: const Color(0xFF636E72),
    ),
  ),
  subThemesData: FlexSubThemesData(
    blendOnLevel: 10,
    buttonPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    blendOnColors: false,
    defaultRadius: 8,
    elevatedButtonTextStyle: MaterialStateProperty.all(
      GoogleFonts.dmSans(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 20 / 18,
        color: const Color(0xFFDFE6E9),
      ),
    ),
    elevatedButtonSchemeColor: SchemeColor.onPrimary,
    elevatedButtonSecondarySchemeColor: SchemeColor.primary,
    outlinedButtonOutlineSchemeColor: SchemeColor.primary,
    unselectedToggleIsColored: true,
    navigationBarLabelTextStyle: GoogleFonts.dmSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 16 / 14,
      color: const Color(0xFF636E72),
    ),
  ),
  useMaterial3ErrorColors: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  fontFamily: GoogleFonts.dmSans().fontFamily,
);
