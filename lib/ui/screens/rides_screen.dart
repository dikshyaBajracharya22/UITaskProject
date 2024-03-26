import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uitask/config/colors.dart';
import 'package:uitask/constants/dynamic_text_style.dart';
import 'package:uitask/constants/images.dart';
import 'package:uitask/ui/components/destination_container.dart';
import 'package:uitask/ui/components/driver_info_container.dart';
import 'package:uitask/ui/components/ride_info_container.dart';
import 'package:uitask/ui/widgets/add_spacing.dart';
import 'package:uitask/ui/widgets/custom_backbutton.dart';
import 'package:uitask/ui/widgets/custom_button.dart';

class RidesScreen extends StatelessWidget {
  const RidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CustomBackButton(),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Text(
                        "My Ride",
                        style: AppTextStyles.titleStyle(context)
                            .copyWith(fontSize: 22),
                      ),
                    )
                  ],
                ),
              ),
              const AddSpacing(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "You can now track your ride.",
                  style: AppTextStyles.subwelcomeStyle(context)
                      .copyWith(color: AppColor.black.withOpacity(0.4)),
                ),
              ),
              const AddSpacing(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColor.black.withOpacity(0.1)),
                          color: AppColor.bgColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                          padding: EdgeInsets.all(4),
                          child: SvgPicture.asset(
                            map,
                            height: 10,
                            width: 10,
                          )),
                    ),
                    const AddSpacing(
                      width: 7,
                    ),
                    Text(
                      "Destination Details",
                      style: AppTextStyles.titleStyle(context)
                          .copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const DestinationDetailsContainer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColor.black.withOpacity(0.1)),
                          color: AppColor.bgColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                          padding: const EdgeInsets.all(2),
                          child: SvgPicture.asset(
                            miniCar,
                            height: 10,
                            width: 10,
                          )),
                    ),
                    const AddSpacing(
                      width: 7,
                    ),
                    Text("Ride Information",
                        style: AppTextStyles.titleStyle(context)
                            .copyWith(fontSize: 14)),
                  ],
                ),
              ),
              const RideInformationContainer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColor.black.withOpacity(0.1)),
                          color: AppColor.bgColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                          padding: const EdgeInsets.all(4),
                          child: SvgPicture.asset(
                            user,
                            height: 10,
                            width: 10,
                          )),
                    ),
                    const AddSpacing(
                      width: 7,
                    ),
                    Text("Driver Information",
                        style: AppTextStyles.titleStyle(context)
                            .copyWith(fontSize: 14)),
                  ],
                ),
              ),
              const DriverInformationContainer(),
              const AddSpacing(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: CustomButton(onTap: () {}, buttonText: "View in map"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
