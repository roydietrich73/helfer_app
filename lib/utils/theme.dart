import 'package:flutter/material.dart';

class MyAppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: const Color.fromARGB(255, 202, 177, 108),
      secondaryHeaderColor: const Color.fromARGB(255, 220, 145, 33),
      scaffoldBackgroundColor: Colors.grey[200],
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
        bodyLarge: TextStyle(
          fontSize: 16.0,
          color: Colors.black87,
        ),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      primaryColor: const Color.fromARGB(255, 77, 87, 143),
      scaffoldBackgroundColor: Colors.grey[800],
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 146, 70, 32),
        ),
        bodyLarge: TextStyle(
          fontSize: 16.0,
          color: Color.fromARGB(255, 60, 26, 26),
        ),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Color.fromARGB(255, 6, 60, 54),
        textTheme: ButtonTextTheme.primary,
      ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color.fromARGB(255, 102, 22, 222)),
    );
  }
}