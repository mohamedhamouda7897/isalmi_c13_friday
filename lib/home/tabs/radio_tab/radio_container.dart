import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../my_theme_data.dart';

class RadioContainer extends StatelessWidget {
  const RadioContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return                 Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: const BoxDecoration(
        image:DecorationImage(image: AssetImage('assets/images/bg.png',),
          alignment: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: MyThemeData.primaryColor,
      ),
      child: Column(
        children: [
          Text(
            'Radio Ibrahim Al-Akdar',
            style: GoogleFonts.aBeeZee(
              color: MyThemeData.blackColor,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                AssetImage(
                  'assets/images/heart_e.png',
                ),
                size: 24,
              ),
              SizedBox(
                width: 20,
              ),
              ImageIcon(
                AssetImage(
                  'assets/images/pause.png',
                ),
                size: 24,
              ),
              SizedBox(
                width: 20,
              ),
              ImageIcon(
                AssetImage(
                  'assets/images/volume_h.png',
                ),
                size: 24,
              ),
            ],
          ),
        ],
      ),
    )
    ;
  }
}
