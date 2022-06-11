import 'package:flutter/material.dart';
import 'package:furrl_assignment/utils/AppManager.dart';

// class to use colors throughout the application
class AppStyle {
  static const Color black = Color(0xff000000);
  static const Color blackLight = Color.fromRGBO(0, 0, 0, 0.5);
  static const Color white = Color(0xffffffff);
  static const Color red = Color(0xffff0000);
  static const Color transparent = Colors.transparent;
  static const Color blue = Color.fromRGBO(0, 142, 195, 1);

  static TextStyle generalTextStyle(
      {Color color = black,
        double fontSize = AppFontSize.s14,
        FontWeight fontWeight = AppFontWeight.regular,
        TextDecoration textDecoration = TextDecoration.none}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      decoration: textDecoration,
    );
  }
}
