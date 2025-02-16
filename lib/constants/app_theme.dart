import 'package:flutter/material.dart';

class AppTheme {
  static bool isDarkMode(BuildContext context) =>
      MediaQuery.of(context).platformBrightness == Brightness.dark;

  static Color iconColor(BuildContext context) =>
      isDarkMode(context) ? Colors.white : Colors.black;

  static Color backgroundColor(BuildContext context) =>
      isDarkMode(context) ? Colors.black : Colors.white;
}
