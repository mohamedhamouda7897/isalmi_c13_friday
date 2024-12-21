import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../my_theme_data.dart';
import 'radio_item.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  int index = 0;
  late final pageController = PageController(
    initialPage: index,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: index == 0
                        ? MyThemeData.primaryColor
                        : MyThemeData.blackColor,
                  ),
                  child: Text(
                    'Radio',
                    style: GoogleFonts.aBeeZee(
                      color: index == 0 ? MyThemeData.blackColor : Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: index == 0
                        ? MyThemeData.blackColor
                        : MyThemeData.primaryColor,
                  ),
                  child: Text(
                    'Reciters',
                    style: GoogleFonts.aBeeZee(
                      color: index == 0 ? Colors.white : MyThemeData.blackColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (position) {
                setState(() {
                  index = position;
                });
              },
              children: const [
                RadioItem(),
                RadioItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
