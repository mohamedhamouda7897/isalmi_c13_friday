import 'package:flutter/material.dart';
import 'package:islami_c13_friday/cache/cache_helper.dart';
import 'package:islami_c13_friday/home/home.dart';
import 'package:islami_c13_friday/on_boarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
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
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: CacheHelper.getEligibility() == true
          ? HomeScreen.routeName
          : OnBoardingScreen.routeName,
    );
  }
}
