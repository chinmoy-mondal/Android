import 'package:flutter/material.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
      textTheme: const TextTheme(),
      primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
        50:Color(0x1AFFF200),
        100: Color(0x33FFF200),
        200: Color(0x4DFFF200),
        300: Color(0x66FFF200),
        400: Color(0x80FFF200),
        500: Color(0xFFFFF200),
        600: Color(0x99FFF200),
        700: Color(0xB3FFF200),
        800: Color(0xCCFFF200),
        900: Color(0xE6FFF200),
      }
    ),
  );
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}