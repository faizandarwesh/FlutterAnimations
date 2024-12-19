import 'package:flutter/material.dart';
import 'package:flutter_animations/onboarding/widgets/onboarding_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class ScreenOne extends StatelessWidget {
  LiquidController liquidController;

  ScreenOne({super.key, required this.liquidController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          onPressed: () {
            // Navigate to the next page
            liquidController.animateToPage(
              page: 1, // Next page index (ScreenTwo)
              duration: 600,
            );
          },
        ),
        backgroundColor: Colors.tealAccent, // Background color for the screen
        body: const OnboardingWidget(
          title: 'Welcome to Your Beautiful Screen',
          imageUrl: 'https://static.toiimg.com/photo/70189092.cms',
          isLastScreen: false,
        ));
  }
}
