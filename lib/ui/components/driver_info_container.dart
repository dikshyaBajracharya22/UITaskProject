import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uitask/config/colors.dart';
import 'package:uitask/constants/dynamic_text_style.dart';
import 'package:uitask/constants/images.dart';
import 'package:uitask/ui/widgets/add_spacing.dart';

class DriverInformationContainer extends StatelessWidget {
  const DriverInformationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: SizedBox(
          width: 275,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.white,
              border: Border.all(
                color: AppColor.black.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: AppColor.bgColor,
                            borderRadius: BorderRadius.circular(25)),
                        child: SvgPicture.asset(person),
                      ),
                      const AddSpacing(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "John Doe",
                            style: AppTextStyles.titleStyle(context)
                                .copyWith(fontSize: 12),
                          ),
                          Text(
                            "Biratnagar",
                            style: AppTextStyles.dateStyle(context),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColor.homeIconColor),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Image.asset(
                                calling,
                                height: 30,
                                width: 30,
                              )),
                        ),
                      ),
                      Text(
                        "Call",
                        style: AppTextStyles.dateStyle(context).copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColor.black.withOpacity(0.5)),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
