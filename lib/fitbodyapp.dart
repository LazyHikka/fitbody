import 'package:flutter/material.dart';
import 'package:fitbody/router/router.dart';
import 'package:fitbody/theme/theme.dart';

class FitBody extends StatelessWidget {
  const FitBody({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      routes: routes,
    );
  }
}
