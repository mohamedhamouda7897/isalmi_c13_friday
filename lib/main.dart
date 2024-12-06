import 'package:flutter/material.dart';
import 'package:islami_c13_friday/home.dart';
import 'package:islami_c13_friday/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
      initialRoute: OnBoardingScreen.routeName,
    );
  }
}
