import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:furrl_assignment/models/Author.dart';
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

  static Iterable<Author> list(List<Author> authorsList) {
    return [
      authorsList.elementAt(0),
      authorsList.elementAt(1),
      authorsList.elementAt(2),
      authorsList.elementAt(3),
      authorsList.elementAt(4),
      authorsList.elementAt(5),
      authorsList.elementAt(6),
      authorsList.elementAt(7),
      authorsList.elementAt(8),
      authorsList.elementAt(9),
      authorsList.elementAt(10),
      authorsList.elementAt(11),
      authorsList.elementAt(12),
      authorsList.elementAt(13),
      authorsList.elementAt(14),
      authorsList.elementAt(15),
      authorsList.elementAt(16),
      authorsList.elementAt(17),
      authorsList.elementAt(18),
      authorsList.elementAt(19),
      authorsList.elementAt(20),
      authorsList.elementAt(21),
      authorsList.elementAt(22),
      authorsList.elementAt(23),
      authorsList.elementAt(24),
      authorsList.elementAt(25),
      authorsList.elementAt(26),
      authorsList.elementAt(27),
      authorsList.elementAt(28),
      authorsList.elementAt(29),
    ];
  }

}
