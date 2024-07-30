import 'package:flutter/material.dart';

abstract class ThemeEvent {}

class ChangeTheme extends ThemeEvent {
  final Color primaryColor;
  final Color borderColor;
  final double borderWidth;
  final TextStyle textStyle;

  ChangeTheme({
    required this.primaryColor,
    required this.borderColor,
    required this.borderWidth,
    required this.textStyle,
  });
}
