import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xFFE2BE7F);
  static const Color blackColor = Color(0xFF202020);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleSmall: GoogleFonts.aBeeZee(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: primaryColor,
      ),
      titleMedium: GoogleFonts.aBeeZee(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      titleLarge: GoogleFonts.aBeeZee(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      bodySmall: GoogleFonts.exo2(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: primaryColor,
      ),
      bodyMedium: GoogleFonts.exo2(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      bodyLarge: GoogleFonts.exo2(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: GoogleFonts.aBeeZee(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      backgroundColor: blackColor,
      iconTheme: const IconThemeData(
        color: primaryColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      backgroundColor: primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: blackColor,
      showUnselectedLabels: false,
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
