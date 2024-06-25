import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: PageController(viewportFraction: 0.8),
          children: [
            Container(child: Image.asset('assets/images/sportsman.png')),
            Container(color: Colors.red),
            Container(color: Colors.black),
          ],
        ),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
              controller: PageController(),
              count: 3,
              effect: JumpingDotEffect(),
            )));
  }
}
