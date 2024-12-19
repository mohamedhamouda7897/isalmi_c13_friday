import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c13_friday/home/tabs/radio_tab/radio_container.dart';

import '../../../my_theme_data.dart';

class RadioItem extends StatelessWidget {
  const RadioItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
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
                    backgroundColor: MyThemeData.primaryColor,
                  ),
                  child: Text(
                    'Radio',
                    style: GoogleFonts.aBeeZee(
                      color: MyThemeData.blackColor,
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
                    backgroundColor: MyThemeData.blackColor,
                  ),
                  child: Text(
                    'Reciters',
                    style: GoogleFonts.aBeeZee(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const RadioContainer(),
          const RadioContainer(),
          const RadioContainer(),
          const RadioContainer(),
        ],
      ),
    );
  }
}
