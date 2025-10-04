import 'package:flutter/material.dart';
import 'package:trainings_planner/theme/text_theme.dart';

ThemeData ntheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 255, 200, 117),
    onPrimary: Color.fromARGB(255, 0, 0, 0),
    secondary: Color.fromARGB(255, 255, 200, 117),
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.black38,
    onSurface: Color.fromARGB(255, 40, 40, 139),
    surface: Color.fromARGB(255, 94, 143, 186),
  ),
  textTheme: textTheme,
  useMaterial3: true,
);

ThemeData theme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    surface: Color.fromARGB(255, 151, 193, 255),
    onSurface: Color.fromARGB(255, 67, 67, 255),
    primary: Color.fromARGB(255, 255, 200, 117),
    onPrimary: Color.fromARGB(255, 104, 81, 47),
    secondary: Color.fromARGB(255, 67, 67, 255),
    onSecondary: Color.fromARGB(255, 42, 88, 42),
    onError: Colors.redAccent,
    error: Colors.red,
  ),
  textTheme: textTheme,
  useMaterial3: true,
);
