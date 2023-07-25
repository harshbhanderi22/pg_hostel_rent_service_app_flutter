import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GeneralUtils {
  static void showFlushbar(String message) {
    //TODO: Decide to add flushbar or fluttertoast
  }

  static void showToast(String message) {
    //TODO: Decorate Later
    Fluttertoast.showToast(msg: message);
  }

  bool checkValidEmail(String email) {
    final regex = RegExp(r"^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$");

    return regex.hasMatch(email);
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
