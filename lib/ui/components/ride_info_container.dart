import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uitask/config/colors.dart';
import 'package:uitask/constants/dynamic_text_style.dart';
import 'package:uitask/constants/images.dart';
import 'package:uitask/ui/widgets/add_spacing.dart';

class RideInformationContainer extends StatelessWidget {
  const RideInformationContainer({super.key});

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
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 3),
            width: 275,
            decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColor.black.withOpacity(0.2))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          whitecar,
                        ),
                        Text(
                          "Scorpio",
                          style: AppTextStyles.dateStyle(context),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BA 2 PA 007",
                          style: AppTextStyles.titleStyle(context)
                              .copyWith(fontSize: 12),
                        ),
                        Text(
                          "Rs. 200",
                          style: AppTextStyles.priceStyle(context),
                        ),
                        Text("3 km away",
                            style: AppTextStyles.dateStyle(context)),
                      ],
                    )
                  ],
                ),
                const AddSpacing(
                  height: 9,
                ),
                Container(
                  width: 250,
                  height: 1,
                  color: AppColor.black.withOpacity(0.2),
                ),
                const AddSpacing(
                  height: 9,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5,
                                  color: AppColor.black.withOpacity(0.1)),
                              color: AppColor.bgColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                              padding: EdgeInsets.all(4),
                              child: SvgPicture.asset(
                                wheel,
                                height: 10,
                                width: 10,
                              )),
                        ),
                        const AddSpacing(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4",
                              style: AppTextStyles.dateStyle(context).copyWith(
                                  fontSize: 10, color: AppColor.black),
                            ),
                            Text(
                              "wheeler",
                              style: AppTextStyles.dateStyle(context).copyWith(
                                  fontSize: 10, color: AppColor.black),
                            )
                          ],
                        ),
                      ],
                    ),
                    const AddSpacing(
                      width: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5,
                                  color: AppColor.black.withOpacity(0.1)),
                              color: AppColor.bgColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                              padding: EdgeInsets.all(4),
                              child: SvgPicture.asset(
                                user,
                                height: 10,
                                width: 10,
                              )),
                        ),
                        const AddSpacing(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4",
                              style: AppTextStyles.dateStyle(context).copyWith(
                                  fontSize: 10, color: AppColor.black),
                            ),
                            Text(
                              "person",
                              style: AppTextStyles.dateStyle(context).copyWith(
                                  fontSize: 10, color: AppColor.black),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
