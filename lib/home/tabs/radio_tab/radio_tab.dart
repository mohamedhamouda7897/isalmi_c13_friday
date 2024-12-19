import 'package:flutter/material.dart';
import 'package:islami_c13_friday/home/tabs/radio_tab/radio_screen/radio_screen.dart';
import 'package:islami_c13_friday/home/tabs/radio_tab/reciter_screen/reciters_screen.dart';
import 'package:islami_c13_friday/my_theme_data.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: MyThemeData.blackTransparent,
              borderRadius: BorderRadius.circular(
                12.0,
              ),
            ),
            child: TabBar(
              indicatorColor: MyThemeData.primaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12.0,
                ),
                color: MyThemeData.primaryColor,
              ),
              labelColor: MyThemeData.blackColor,
              unselectedLabelColor: Colors.white,
              controller: tabController,
              tabs: const [
                Tab(
                  child: Text(
                    'Radio',
                    textAlign: TextAlign.left,
                  ),
                ),
                Tab(
                  text: 'Reciters',
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: TabBarView(
                  controller: tabController,
                  children: const [RadioScreen(), RecitersScreen()]),
            ),
          )
        ],
      ),
    );
  }
}
