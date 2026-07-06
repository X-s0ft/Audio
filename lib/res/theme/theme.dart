import 'package:flutter/material.dart';

final theme = ThemeData(
  useMaterial3: true,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.cyanAccent,
      shape: const StadiumBorder(side: BorderSide.none),
      padding: const EdgeInsets.all(15),
      minimumSize: const Size(150, 150),
      side: BorderSide.none,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 50),
    ),
  ),
);
