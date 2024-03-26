import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uitask/config/colors.dart';
class AppTheme {
  static theme() {
    return ThemeData(
        scaffoldBackgroundColor: AppColor.backgroundColor,
        fontFamily: 'Manrope',
        textTheme: textTheme());
  }

  static TextTheme textTheme() {
    return TextTheme(
      displayLarge: GoogleFonts.secularOne(
          fontSize: 26, fontWeight: FontWeight.bold, color: AppColor.black),
      displayMedium: GoogleFonts.manrope(
          fontSize: 15, fontWeight: FontWeight.w500, color: AppColor.black),
      displaySmall: GoogleFonts.manrope(
          fontSize: 15, fontWeight: FontWeight.w500, color: AppColor.black),
      titleLarge: GoogleFonts.manrope(
          fontSize: 18, fontWeight: FontWeight.bold, color: AppColor.black),
      titleMedium: GoogleFonts.manrope(
          fontSize: 14, fontWeight: FontWeight.bold, color: AppColor.black),
      titleSmall: GoogleFonts.manrope(
          fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.black),
      bodyLarge: GoogleFonts.manrope(
          fontSize: 16, fontWeight: FontWeight.bold, color: AppColor.black),
      bodyMedium: GoogleFonts.manrope(
          fontSize: 14, fontWeight: FontWeight.bold, color: AppColor.black),
      bodySmall: GoogleFonts.manrope(
          fontSize: 12, fontWeight: FontWeight.bold, color: AppColor.black),
    );
  }
}
