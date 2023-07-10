import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real/Utils/app_styles.dart';
import 'package:real/Utils/button.dart';

import '../Utils/intro_card.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 52.h),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              //For LOGO..
              Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
              ),

              SizedBox(
                height: 40.h,
              ),

              //For Intro Card..
              IntroCard(),
              Spacer(),
              Button(text: 'Create Account'),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account? ',
                    style: Styles.textStyle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    ' Log In',
                    style: Styles.headLineStyle3.copyWith(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}


