import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 236, 110, 152);

  static final ThemeData pinkTheme = ThemeData.light().copyWith(
      primaryColor: Colors.pink[200],
      appBarTheme: AppBarTheme(color: Colors.pink[200], elevation: 0),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: AppTheme.primary)));
  //scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255));

  static final ThemeData rainbowTheme = ThemeData.light().copyWith(
      primaryColor: Color.fromARGB(255, 212, 155, 223),
      appBarTheme:
          AppBarTheme(color: Color.fromARGB(255, 238, 171, 109), elevation: 0),
      scaffoldBackgroundColor: Color.fromARGB(255, 199, 255, 201));
}
