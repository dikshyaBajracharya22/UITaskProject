import 'package:flutter/material.dart';
import 'package:uitask/config/colors.dart';
import 'package:uitask/constants/dynamic_text_style.dart';

class WelcomeMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome, Prem!",
            style: AppTextStyles.welcomeTextStyle(context),
          ),
          Text(
            "What service would you like to seek from",
            style: AppTextStyles.subwelcomeStyle(context),
          ),
          RichText(
            text: TextSpan(
              style: AppTextStyles.subwelcomeStyle(context)
                  .copyWith(color: const Color.fromARGB(255, 207, 191, 51)),
              text: "365trips ",
              children: [
                TextSpan(
                  text: "Today?",
                  style: AppTextStyles.subwelcomeStyle(context),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
