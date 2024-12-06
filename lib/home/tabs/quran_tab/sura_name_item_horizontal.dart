import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuraNameItemHorizontal extends StatelessWidget {
  String name;

  SuraNameItemHorizontal({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: const Color(0xFFE2BE7F), borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 22,
              ),
              Text(
                name,
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
