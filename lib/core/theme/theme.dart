import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';

Iterable<ThemeExtension<dynamic>>? extensions = [
  const ColorsTheme(
    error: Color(0xffFE9399),
    onError: Color(0xff57070C),
    info: Color(0xffAECFFF),
    onInfo: Color(0xff00132F),
    success: Color(0xffA9FFAC),
    onSuccess: Color(0xff023D04),
    onWarning: Color(0xff512E06),
    warning: Color(0xffFDCD95),
    supportings: {},
  ),
  RadiusesTheme(
    tiny: BorderRadius.circular(5.0),
    medium: BorderRadius.circular(12.0),
    big: BorderRadius.circular(20.0),
    small: BorderRadius.circular(999.0),
  ),
  const PaddingsTheme(
    tiny: 4.0,
    medium: 16.0,
    big: 26.0,
    small: 8.0,
  ),
  const MarginTheme(normal: 16),
  const ConstraintsTheme(
    maxPageWidth: 1024,
    mobileScreenMax: 800,
    snackbarMaxSize: 800,
  ),
  const ComponentsTheme(
    dataGrid: null,
    tooltip: null,
  ),
  ButtonThemes(
    error: FilledButton.styleFrom(
      foregroundColor: const Color(0xff57070C),
      backgroundColor: const Color(0xffFE9399),
    ),
    success: FilledButton.styleFrom(
      foregroundColor: const Color(0xff023D04),
      backgroundColor: const Color(0xffA9FFAC),
    ),
  )
];

final lightTheme = FlexThemeData.light(
  colors: const FlexSchemeColor(
    primary: Color(0xff383fef),
    primaryContainer: Color(0xffd0e4ff),
    secondary: Color(0xfff64077),
    secondaryContainer: Color(0xffffdbcf),
    tertiary: Color(0xff006875),
    tertiaryContainer: Color(0xff95f0ff),
    appBarColor: Color(0xffffdbcf),
    error: Color(0xffb00020),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
).copyWith(extensions: extensions, inputDecorationTheme: InputDecorationTheme());

final darkTheme = FlexThemeData.dark(
  colors: const FlexSchemeColor(
    primary: Color(0xff9fc9ff),
    primaryContainer: Color(0xff00325b),
    secondary: Color(0xffffb59d),
    secondaryContainer: Color(0xff872100),
    tertiary: Color(0xff86d2e1),
    tertiaryContainer: Color(0xff004e59),
    appBarColor: Color(0xff872100),
    error: Color(0xffcf6679),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
).copyWith(extensions: extensions, inputDecorationTheme: InputDecorationTheme());
