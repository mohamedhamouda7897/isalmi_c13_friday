import 'package:flutter/material.dart';
import 'package:islami_c13_friday/home/tabs/ahadeth_tab.dart';
import 'package:islami_c13_friday/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_c13_friday/home/tabs/radio_tab.dart';
import 'package:islami_c13_friday/home/tabs/sebha_tab.dart';
import 'package:islami_c13_friday/home/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/${getBackgroundName(selectedIndex)}.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: _buildNavItem("quran", 0), label: "Quran"),
            BottomNavigationBarItem(
                icon: _buildNavItem("ahadeth", 1), label: "Ahadeth"),
            BottomNavigationBarItem(
                icon: _buildNavItem("sebha", 2), label: "Sebha"),
            BottomNavigationBarItem(
                icon: _buildNavItem("ic_radio", 3), label: "Radio"),
            BottomNavigationBarItem(
                icon: _buildNavItem("dates", 4), label: "Times"),
          ],
        ),
        body: Column(
          children: [
            Image.asset("assets/images/onboarding_header.png"),
            Expanded(child: tabs[selectedIndex]),
          ],
        ),
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];

  String getBackgroundName(int index) {
    switch (index) {
      case 0:
        return "home_bg";
      case 1:
        return "ahadeth_bg";
      case 2:
        return "sebha_bg";
      case 3:
        return "radio_bg";

      default:
        return "home_bg";
    }
  }

  Widget _buildNavItem(String imageName, int index) {
    return selectedIndex == index
        ? Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: const Color(0x99202020),
            ),
            child: ImageIcon(AssetImage("assets/images/$imageName.png")))
        : ImageIcon(AssetImage("assets/images/$imageName.png"));
  }
}
