import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c13_friday/model/sura_model.dart';

class SuraNameItemHorizontal extends StatelessWidget {
  SuraModel model;

  SuraNameItemHorizontal({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: const Color(0xFFE2BE7F),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                model.nameEn,
                style: GoogleFonts.elMessiri(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF202020)),
              ),
              Text(
                model.nameAr,
                style: GoogleFonts.elMessiri(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF202020)),
              ),
              Text(
                "${model.numOfVerses} verses",
                style: GoogleFonts.elMessiri(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF202020)),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Image.asset("assets/images/sura_item.png")
        ],
      ),
    );
  }
}
