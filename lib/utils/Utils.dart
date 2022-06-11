import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:furrl_assignment/utils/AppStyle.dart';

// Class to manage same type of function throughout the application
class Utils {

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static void showToast({required String message}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppStyle.white,
      textColor: AppStyle.black,
      fontSize: 16.0,
    );
  }

}
