import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color primary = const Color(0xFF687daf);

class Styles {

  //Theme Colors..
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color darkPrimaryColor = const Color(0xFF526799);
  static Color darkBlueColor = const Color(0xD91130CE);

  //Text Styles..
  static TextStyle textStyle = TextStyle(fontSize: 16.sp , color: textColor , fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = TextStyle(fontSize: 26.sp , color: textColor , fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(fontSize: 21.sp , color: textColor , fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(fontSize: 17.sp , color: Colors.grey.shade500 , fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(fontSize: 14.sp , color: Colors.grey.shade500 , fontWeight: FontWeight.w500);
}