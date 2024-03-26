import 'package:flutter/material.dart';
import 'package:uitask/config/colors.dart';

class CustomBackButton extends StatelessWidget {
  final Color? color;
  const CustomBackButton({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.maybePop(context),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: AppColor.backgroundColor, width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: const Center(
          child: Icon(
            Icons.chevron_left,
            size: 32,
            color: AppColor.black,
          ),
        ),
      ),
    );
  }
}
