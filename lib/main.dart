import 'package:flutter/material.dart';
import 'package:flutter_animations/onboarding/ui/screen_one.dart';
import 'package:flutter_animations/onboarding/ui/screen_three.dart';
import 'package:flutter_animations/onboarding/ui/screen_two.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  late LiquidController liquidController;

  @override
  void initState() {
    super.initState();
    liquidController = LiquidController();
  }

  @override
  Widget build(BuildContext context) {

    final pages = [
      ScreenOne(liquidController: liquidController,),
      ScreenTwo(liquidController: liquidController,),
      const ScreenThree(),
    ];

    return MaterialApp(
      title: 'Flutter Animations',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Builder(
          builder: (context) =>
              LiquidSwipe(
                liquidController: liquidController,
                  pages: pages
              )),
    );
  }
}
