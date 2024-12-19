import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c13_friday/my_theme_data.dart';
class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
   return Center(
     child: Column(
       children: [
         Text('Sebha Tab',
         style:GoogleFonts.aBeeZee(
           color: MyThemeData.primaryColor,
           fontSize: 24,
         )
         ),
       ],
     ),
   );
  }
}
