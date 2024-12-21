import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c13_friday/home/tabs/times_tab/prayer_time_item.dart';

import '../../../my_theme_data.dart';

class PrayerContainer extends StatelessWidget {
  const PrayerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: MyThemeData.primaryColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '16 Jul',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '2024',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Prayer times',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Tuesday',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '09 Muh,',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '1446',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: const [
              PrayerTimeItem(),
              PrayerTimeItem(),
              PrayerTimeItem(),
              PrayerTimeItem(),
              PrayerTimeItem(),
            ],
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2/1,
              autoPlayCurve: Curves.bounceOut,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: .4,
            ),
          ),
          Text(
            'Next Pray - 02:23',
            style: GoogleFonts.aBeeZee(
              fontSize: 16,
              color: MyThemeData.blackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
