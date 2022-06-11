// class to move from one screen to another screen throught the application
import 'package:flutter/material.dart';
import 'package:furrl_assignment/utils/AppStyle.dart';
import 'package:furrl_assignment/utils/Routes.dart';
import 'package:furrl_assignment/screens/OnBoardingScreen.dart';

class RoutesManager {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              backgroundColor: AppStyle.white,
              body: SafeArea(
                child: Center(
                  child: Text(
                    'No Route Found',
                    style: AppStyle.generalTextStyle(
                      color: AppStyle.black,
                    ),
                  ),
                ),
              ),
            ));
    }
  }
}
