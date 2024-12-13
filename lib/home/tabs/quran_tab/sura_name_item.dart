import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c13_friday/model/sura_model.dart';

class SuraNameItem extends StatelessWidget {
  SuraModel model;

  SuraNameItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/sura_number.png"),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text("${model.index}",
                    style: GoogleFonts.elMessiri(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )
            ],
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.nameEn,
                  style: GoogleFonts.elMessiri(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "${model.numOfVerses} Verses",
                  style: GoogleFonts.elMessiri(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Text(
            model.nameAr,
            style: GoogleFonts.elMessiri(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
