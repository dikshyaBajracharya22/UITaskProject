import 'package:flutter/material.dart';
import 'package:uitask/config/route_constants.dart';

import 'package:uitask/ui/screens/main_home_screen.dart';
import 'package:uitask/ui/screens/rides_screen.dart';

class AppRoute extends RouteConstants {
  static Route appRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstants.mainhomeRoute:
        return getPageRoute(const MainHomeScreen());
      case RouteConstants.ridesRoute:
        return getPageRoute(const RidesScreen());

      default:
        return getPageRoute(const MainHomeScreen());
    }
  }

  static Route getPageRoute(Widget screen) {
    return MaterialPageRoute(builder: (_) => screen);
  }
}
