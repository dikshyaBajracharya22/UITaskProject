import 'package:flutter/material.dart';
import 'package:uitask/config/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.buttonText,
      this.color,
      this.textcolor,
      this.width});
  final VoidCallback onTap;
  final String buttonText;
  final Color? color;
  final Color? textcolor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color ?? AppColor.homeIconColor,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: textcolor ?? AppColor.white,
                ),
          ),
        ),
      ),
    );
  }
}
