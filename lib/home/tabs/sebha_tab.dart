import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

String text = 'سبحان الله';
int counter = 0;

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              const Image(
                image: AssetImage(
                  'assets/images/sebha.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (counter < 100) {
                    setState(() {
                      counter++;
                      if (counter >= 33 && counter < 67) {
                        text = 'الحمد لله';
                      } else if (counter >= 66) {
                        text = 'الله اكبر';
                      }
                    });
                  } else {
                    setState(() {
                      text = 'سبحان الله';
                      counter = 0;
                    });
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      Text(
                        text,
                        style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$counter',
                        style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
