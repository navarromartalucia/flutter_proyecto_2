import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 236, 110, 152);

  static final ThemeData pinkTheme = ThemeData.light().copyWith(
      primaryColor: Colors.pink[200],
      appBarTheme: AppBarTheme(color: Colors.pink[200], elevation: 0),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: AppTheme.primary)),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(primary: AppTheme.primary)),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10)))),
  );
  //scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255));

  static final ThemeData rainbowTheme = ThemeData.light().copyWith(
      primaryColor: Color.fromARGB(255, 212, 155, 223),
      appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 238, 171, 109), elevation: 0),
      scaffoldBackgroundColor: Color.fromARGB(255, 199, 255, 201));
}
