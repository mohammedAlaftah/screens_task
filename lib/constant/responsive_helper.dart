import 'package:flutter/material.dart';

class ResponsiveUtils {
  static late double _screenWidth;
  static late double _screenHeight;
  static late double _fontSize;

  static void init(BuildContext context, int widthFactor, int heightFactor, double fontFactor) {
    _screenWidth = MediaQuery.of(context).size.width * (widthFactor / 10);
    _screenHeight = MediaQuery.of(context).size.height * (heightFactor / 10);
    _fontSize = MediaQuery.of(context).size.width * (fontFactor / 10);
  }

  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;
  static double get fontSize => _fontSize;
}
