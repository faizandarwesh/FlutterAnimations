import 'package:flutter/material.dart';
import 'package:flutter_animations/onboarding/widgets/onboarding_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class ScreenTwo extends StatelessWidget {
  LiquidController liquidController;

  ScreenTwo({super.key, required this.liquidController});

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
            liquidController.animateToPage(
              page: 2, // Next page index (ScreenTwo)
              duration: 600,
            );
          },
        ),
        backgroundColor: Colors.cyanAccent, // Background color for the screen
        body: const OnboardingWidget(
          title: 'Going to see and explore the world of spices',
          imageUrl:
              'https://img.freepik.com/free-photo/different-dishes-food_23-2147681096.jpg',
          isLastScreen: false,
        ));
  }
}
