import 'package:flutter/material.dart';
import 'package:uitask/config/colors.dart';

class AppTextStyles {
  static TextStyle welcomeTextStyle(BuildContext context) {
    return  const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      letterSpacing: 0.25,
      color: AppColor.mainText,
    );
  }
   static TextStyle nameStyle(BuildContext context) {
    return const TextStyle(
      fontFamily: "Secular One",
      fontWeight: FontWeight.w500,
      fontSize: 20,
      letterSpacing: 0.25,
      color: AppColor.black,
    );
  }
   static TextStyle titleStyle(BuildContext context) {
    return const TextStyle(
      fontFamily: "Ubuntu",
      fontWeight: FontWeight.w600,
      fontSize: 16,
      letterSpacing: 0.25,
      color: AppColor.black,
    );
  }
  static TextStyle subwelcomeStyle(BuildContext context) {
    return  TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      letterSpacing: 0.25,
      color: AppColor.subtitleColor.withOpacity(0.4),
    );
  }
    static TextStyle gridStyle(BuildContext context) {
    return  const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 12,
      letterSpacing: 0.25,
      color: AppColor.black,
    );
  }
    static TextStyle dateStyle(BuildContext context) {
    return  TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10,
      letterSpacing: 0.25,
      color: AppColor.black.withOpacity(0.3),
    );
  }
   static TextStyle priceStyle(BuildContext context) {
    return  const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      letterSpacing: 0.25,
      color: AppColor.homeIconColor,
    );
  }
}