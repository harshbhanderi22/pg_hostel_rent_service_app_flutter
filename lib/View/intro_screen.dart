import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real/Utils/Components/button.dart';
import 'package:real/Utils/Components/intro_card.dart';
import 'package:real/Utils/Routes/route_name.dart';
import 'package:real/Utils/app_styles.dart';

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
              const IntroCard(),
              const Spacer(),
              Button(
                onTap: () {
                  Navigator.of(context).pushNamed(RoutesName.signUpScreen);
                },
                text: 'Create Account',
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: Styles.textStyle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    ' Log In',
                    style: Styles.headLineStyle4.copyWith(color: Colors.blue),
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
