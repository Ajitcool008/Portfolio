import 'package:flutter/material.dart';
import 'package:ajit/configs/configs.dart';

class AppText {
  static TextStyle? btn;

  // Headings
  static TextStyle? h1;
  static TextStyle? h1b;
  static TextStyle? h2;
  static TextStyle? h2b;
  static TextStyle? h3;
  static TextStyle? h3b;

  // Body
  static TextStyle? b1;
  static TextStyle? b1b;
  static TextStyle? b2;
  static TextStyle? b2b;

  // Label
  static TextStyle? l1;
  static TextStyle? l1b;
  static TextStyle? l2;
  static TextStyle? l2b;

  static init() {
    const b = FontWeight.bold;
    const baseStyle = TextStyle(fontFamily: fontFamily);

    h1 = baseStyle.copyWith(fontSize: AppDimensions.font(32), letterSpacing: -1.2);
    h1b = h1!.copyWith(fontWeight: FontWeight.w900);

    h2 = baseStyle.copyWith(fontSize: AppDimensions.font(24), letterSpacing: -0.8);
    h2b = h2!.copyWith(fontWeight: FontWeight.w800);

    h3 = baseStyle.copyWith(fontSize: AppDimensions.font(18));
    h3b = h3!.copyWith(fontWeight: FontWeight.w700);

    b1 = baseStyle.copyWith(fontSize: AppDimensions.font(12), height: 1.5);
    b1b = b1!.copyWith(fontWeight: FontWeight.w600);

    b2 = baseStyle.copyWith(fontSize: AppDimensions.font(10), height: 1.4);
    b2b = b2!.copyWith(fontWeight: FontWeight.w600);

    l1 = baseStyle.copyWith(fontSize: AppDimensions.font(8));
    l1b = l1!.copyWith(fontWeight: FontWeight.w700);

    l2 = baseStyle.copyWith(fontSize: AppDimensions.font(6));
    l2b = l2!.copyWith(fontWeight: FontWeight.w700);
  }
}
