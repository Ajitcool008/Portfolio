import 'package:flutter/material.dart';

const fontFamily = 'Montserrat';

final themeLight = ThemeData(
  primaryColorLight: const Color(0xff00F2FF),
  brightness: Brightness.light,
  primaryColor: const Color(0xff00F2FF),
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.cyan,
  ).copyWith(
    secondary: const Color(0xff7000FF),
    brightness: Brightness.light,
    surface: Colors.white,
  ),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: const Color(0xff00F2FF),
  primaryColor: const Color(0xff00F2FF),
  highlightColor: const Color(0xff00F2FF),
  canvasColor: Colors.black,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: const Color(0xff020202),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.cyan,
    brightness: Brightness.dark,
  ).copyWith(
    secondary: const Color(0xff7000FF),
    surface: const Color(0xff121212),
  ),
);
