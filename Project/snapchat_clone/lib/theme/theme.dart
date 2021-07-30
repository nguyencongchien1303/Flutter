import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Color(0xFF000000).withOpacity(0.05),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Color(0xFF262626),
      ),
      headline2: TextStyle(
        color: Colors.black,
      ),
      headline3: TextStyle(
        color: Color(0xFF000000).withOpacity(0.4),
      ),
    ),
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    backgroundColor: Color(0xFFFFFFFF).withOpacity(0.2),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Color(0xFFF9F9F9),
      ),
      headline2: TextStyle(
        color: Colors.white.withOpacity(0.4),
      ),
      headline3: TextStyle(
        color: Color(0xFFFFFFFF).withOpacity(0.6),
      ),
    ),
  );
}
