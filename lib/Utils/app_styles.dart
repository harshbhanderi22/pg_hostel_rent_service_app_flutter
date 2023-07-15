import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  //Theme Colors..
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFF4EBEC);
  static Color darkPrimaryColor = const Color(0xFFB53C43);
  static Color greyColor = const Color(0xffF1F1F1);
  static Color tealColor = const Color(0xFF21A7AF);
  static Color yellowColor = const Color(0xFFEA7E00);
  
  

  //Shadow type..
  static BoxShadow greyShadow = 
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 0.5,
        blurRadius: 5,
        offset: const  Offset(0.5, 0.5), // changes position of shadow
      );
        static BoxShadow blueShadow = 
      BoxShadow(
        color: darkPrimaryColor.withOpacity(0.5),
        spreadRadius: 0.5,
        blurRadius: 5,
        offset: const  Offset(0.5, 0.5), // changes position of shadow
      );


  //Text Styles..

  static TextStyle textStyle =
     GoogleFonts.openSans(fontSize: 16.sp, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      GoogleFonts.openSans(fontSize: 26.sp, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      GoogleFonts.openSans(fontSize: 21.sp, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = GoogleFonts.openSans(
      fontSize: 17.sp,
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = GoogleFonts.openSans(
      fontSize: 14.sp,
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w500);

   static TextStyle cardTextStyle = GoogleFonts.openSans(
      fontSize: 15,
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w800);

  //Validation Strings
  static String nameValidation =
      "Your name is the first thing we'll know about you, so let's get to know you!";
  static String emailValidation =
      " We need your email address to keep in touch.";

  static String passwordValidation =
      " Your password is your key to your account. Make sure it's strong!";

  static String confirmPasswordValidation =
      "Please confirm your password to make sure you didn't forget it.";

  static String passwordNotMatchValidation =
      " Your passwords don't match! Please try again.";

  static String inValidEmailValidation =
      "Your email address doesn't look quite right. Let's try that again.";

  static String passwordLengthValidation =
      "Your password is too short! Make it longer so it's more secure.";
}
