import 'package:flutter/material.dart';

class FTextTheme {
  FTextTheme._();

  static TextTheme describeTextTheme = TextTheme(
      headlineLarge: const TextStyle().copyWith(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      bodyMedium: const TextStyle().copyWith(
          fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white));
  static TextTheme AppbarTextTheme = TextTheme(
      headlineLarge: const TextStyle().copyWith(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green));
}
