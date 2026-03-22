import 'package:flutter/material.dart';
import 'app_core_theme.dart';

class AppTheme {
  static final _core = AppCoreTheme(
    shadowSub: const Color(0xffffffff), // Light shadow for neumorphism
    shadow: const Color(0xffd1d9e6), // Dark shadow for neumorphism
    primary: const Color(0xffff014f), // InBio Pink/Red
    primaryLight: const Color(0xffff014f).withAlpha(100),
    accent: const Color(0xffff014f),
    accentLight: const Color(0xffff014f).withAlpha(100),
    textSub: const Color(0xff3c3e41), // Body Text
    textSub2: const Color(0xff3c3e41).withOpacity(0.7),
  );

  static AppCoreTheme light = _core.copyWith(
    background: const Color(0xffecf0f3),
    backgroundSub: const Color(0xffffffff),
    scaffold: const Color(0xffecf0f3),
    scaffoldDark: const Color(0xffd1d9e6),
    text: const Color(0xff1e2125), // Heading Text
    textSub2: const Color(0xff3c3e41),
  );

  static AppCoreTheme dark = _core.copyWith(
    background: const Color(0xff212428), // InBio Dark Mode background
    backgroundSub: const Color(0xff1e2125),
    scaffold: const Color(0xff212428),
    text: Colors.white,
    textSub: Colors.white70,
    textSub2: Colors.white60,
    shadow: Colors.black.withOpacity(0.5),
    shadowSub: Colors.white.withOpacity(0.05),
  );

  static AppCoreTheme? c;

  // Init
  static init(BuildContext context) {
    c = isDark(context) ? dark : light;
  }

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}
