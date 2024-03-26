import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uitask/config/colors.dart';
import 'package:uitask/constants/dynamic_text_style.dart';
import 'package:uitask/constants/images.dart';
import 'package:uitask/ui/widgets/add_spacing.dart';

class DestinationDetailsContainer extends StatelessWidget {
  const DestinationDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: AppColor.black.withOpacity(0.3),
            height: 150,
            width: 1,
          ),
          const AddSpacing(
            width: 20,
          ),
          Container(
            // height: 160,
            width: 275,
            decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColor.black.withOpacity(0.2))),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15, top: 5, bottom: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "25th March 2024, 10:00 am",
                    style: AppTextStyles.dateStyle(context),
                  ),
                  const AddSpacing(
                    height: 7,
                  ),
                  Container(
                    width: 250,
                    height: 1,
                    color: AppColor.black.withOpacity(0.2),
                  ),
                  const AddSpacing(
                    height: 13,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: AppColor.homeIconColor,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const AddSpacing(
                        width: 12,
                      ),
                      Text(
                        "Airport, Biratnagar, Morang, Nepal",
                        style: AppTextStyles.nameStyle(context)
                            .copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: SvgPicture.asset(dotLine),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: AppColor.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const AddSpacing(
                        width: 12,
                      ),
                      Text(
                        "Damak-5, Yalambar Chowk Jhapa",
                        style: AppTextStyles.nameStyle(context)
                            .copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
