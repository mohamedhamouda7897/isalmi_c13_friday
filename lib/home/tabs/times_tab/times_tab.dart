import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c13_friday/home/tabs/times_tab/prayer_container.dart';
import 'package:islami_c13_friday/my_theme_data.dart';

class TimesTab extends StatelessWidget {
  const TimesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PrayerContainer(),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Azkar',
            style: GoogleFonts.aBeeZee(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: MyThemeData.primaryColor,
                      width: 2,
                    ),
                  ),
                  width: 185,
                  height: 259,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/evening.png',
                        ),
                      ),
                      Text(
                        'Evening Azkar',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 12,
              ),
              itemCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
