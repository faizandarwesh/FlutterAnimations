import 'package:flutter/material.dart';
import 'package:flutter_animations/onboarding/widgets/onboarding_widget.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.purpleAccent, // Background color for the screen
        body: OnboardingWidget(
          title: 'Welcome to the Foodies Community',
          imageUrl:
              'https://assets.lightspeedhq.com/img/2016/06/Instagram-Food-Pics-blog.jpg',
          isLastScreen: true,
        ));
  }
}
