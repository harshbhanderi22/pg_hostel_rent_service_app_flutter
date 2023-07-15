import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real/Utils/Components/button.dart';
import 'package:real/Utils/Components/intro_card.dart';
import 'package:real/Utils/Components/logo_box.dart';
import 'package:real/Utils/Routes/route_name.dart';
import 'package:real/Utils/app_styles.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 52.h),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              //TODO: Add Logo Here
              const LogoBox(),
              SizedBox(
                height: 40.h,
              ),
              const IntroCard(),
              const Spacer(),
              Button(
                onTap: () {
                  Navigator.of(context).pushNamed(RoutesName.signUpScreen);
                },
                child: Text(
                  "Create Account",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(RoutesName.loginScreen);
                    },
                    child: Text(
                      ' Log In',
                      style: Styles.headLineStyle4.copyWith(color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
