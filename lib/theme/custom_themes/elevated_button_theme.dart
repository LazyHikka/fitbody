import 'package:flutter/material.dart';

class FElevatedButtonTheme {
  FElevatedButtonTheme._();

  static final fitElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Color.fromARGB(255, 39, 36, 36),
      backgroundColor: Color.fromARGB(255, 53, 50, 50),
      padding: const EdgeInsets.symmetric(vertical: 20),
      textStyle: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    ),
  );
}
