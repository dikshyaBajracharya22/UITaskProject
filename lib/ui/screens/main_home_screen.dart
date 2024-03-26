import 'package:flutter/material.dart';
import 'package:uitask/config/colors.dart';
import 'package:uitask/config/route_constants.dart';
import 'package:uitask/constants/dynamic_text_style.dart';
import 'package:uitask/constants/images.dart';
import 'package:uitask/models/category_model.dart';
import 'package:uitask/ui/widgets/add_spacing.dart';
import 'package:uitask/ui/widgets/category_gridview.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uitask/ui/widgets/welcome_message.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 2:
        Navigator.pushNamed(context, RouteConstants.ridesRoute);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColor.bgcolor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: SvgPicture.asset(
                                logoo,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: SvgPicture.asset(
                                propic,
                                fit: BoxFit.contain,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const AddSpacing(
                height: 25,
              ),
              WelcomeMessage(),
              const AddSpacing(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SvgPicture.asset(
                  bannerr,
                  width: 330,
                  height: 165,
                ),
              ),
              const AddSpacing(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Categories",
                  style: AppTextStyles.titleStyle(context),
                ),
              ),
              Container(
                child: categoryGridView(categoryModel(), context),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Material(
          elevation: 8,
          child: BottomNavigationBar(
            backgroundColor: AppColor.white,
            currentIndex: _selectedIndex,
            selectedItemColor: AppColor.homeIconColor,
            unselectedItemColor: AppColor.black,
            unselectedFontSize: 9,
            selectedFontSize: 9,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'HISTORY',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined),
                label: 'MY RIDES',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                label: 'SETTINGS',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
