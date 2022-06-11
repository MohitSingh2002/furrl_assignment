import 'package:flutter/material.dart';

// Class to manage same type of function throughout the application
class Utils {

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

}
