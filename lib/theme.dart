import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: Colors.white,
        secondary: Colors.redAccent,
      ),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
        color: Colors.redAccent,
      )));
}
