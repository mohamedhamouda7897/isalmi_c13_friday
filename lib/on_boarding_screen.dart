import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:islami_c13_friday/home.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = "/";

  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      headerBackgroundColor: Color(0xFF202020),
      finishButtonText: 'Home',
      pageBackgroundColor: Color(0xFF202020),
      onFinish: () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },

      middle: Image.asset(
        "assets/images/islami.png",
        color: Color(0xFF202020),
      ),
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: Color(0xFFE2BE7F),
      ),

      // skipTextButton: Container(
      //     width: double.infinity,

      //     height: 300,
      //     child: Image.asset("assets/images/islami.png")),
      background: [
        Image.asset('assets/images/onboarding_1.png'),
        Image.asset('assets/images/onboarding_2.png'),
        Image.asset('assets/images/onboarding_3.png'),
      ],
      totalPage: 3,
      speed: 1.8,
      pageBodies: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'Welcome To Islmi App',
                style: TextStyle(
                    color: Color(0xFFE2BE7F),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'Welcome To Islmi App',
                style: TextStyle(
                    color: Color(0xFFE2BE7F),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "We Are Very Excited To Have You In Our Community",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFFE2BE7F),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'Reading the Quran',
                style: TextStyle(
                    color: Color(0xFFE2BE7F),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Read, and your Lord is the Most Generous",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFFE2BE7F),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ],
    );
  }
}
