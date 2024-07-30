import 'package:flutter/material.dart';

class ThemeState {
  final Color primaryColor;
  final Color borderColor;
  final double borderWidth;
  final TextStyle textStyle;

  ThemeState({
    required this.primaryColor,
    required this.borderColor,
    required this.borderWidth,
    required this.textStyle,
  });

  get themeData => null;
}
