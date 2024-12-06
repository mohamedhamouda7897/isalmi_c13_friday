import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuraNameItem extends StatelessWidget {
  int index;
  String name;

  SuraNameItem({super.key, required this.name, required this.index});

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
                child: Text("$index",
                    style: GoogleFonts.elMessiri(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )
            ],
          ),
          Text(
            name,
            style: GoogleFonts.elMessiri(
                fontSize: 16, fontWeight:
            FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
