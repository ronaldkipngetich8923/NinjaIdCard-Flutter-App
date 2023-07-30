import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ninja_id_card/splashscreen.dart';

import 'ninja.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash:Icons.sports_gymnastics,
        duration: 3000,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.amberAccent,
        nextScreen: NinjaCard(),
      ),
    );
  }
}

