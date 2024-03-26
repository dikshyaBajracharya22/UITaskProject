import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/config/app_route.dart';
import 'package:uitask/config/app_theme.dart';
import 'package:uitask/config/route_constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "UI TASK",
        onGenerateRoute: AppRoute.appRoute,
        initialRoute: RouteConstants.mainhomeRoute,
        theme: AppTheme.theme(),
      ),
    );
  }
}
