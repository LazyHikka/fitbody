import 'package:fitbody/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromRGBO(27, 26, 26, 1),
    colorScheme:
        ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 94, 10, 240)),
    useMaterial3: true,
    textTheme: FTextTheme.describeTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData());
