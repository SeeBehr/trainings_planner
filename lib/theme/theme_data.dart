import 'package:flutter/material.dart';
import 'package:trainings_planner/theme/text_theme.dart';

ThemeData theme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 255, 200, 117),
    onPrimary: Color.fromARGB(255, 104, 81, 47),
    secondary: Color.fromARGB(255, 67, 67, 255),
    onSecondary: Color.fromARGB(255, 42, 88, 42),
    surface: Color.fromARGB(255, 170, 200, 255),
    onSurface: Color.fromARGB(255, 67, 67, 255),
    onError: Colors.redAccent,
    error: Colors.red,
  ),
  textTheme: textTheme,
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Colors.black,
    selectionColor: Colors.blueAccent,
    selectionHandleColor: Colors.blue,
  ),
  useMaterial3: true,
);
