import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayerTimeItem extends StatelessWidget {
  const PrayerTimeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(

        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(20),
          color: const Color(
            0xffB19768,
          ),
        ),
        child: Column(
          children: [
            Text(
              'ASR',
              style: GoogleFonts.aBeeZee(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              '04:38',
              style: GoogleFonts.aBeeZee(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            Text(
              'PM',
              style: GoogleFonts.aBeeZee(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
