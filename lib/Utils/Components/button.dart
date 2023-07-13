import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real/Utils/app_styles.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onTap;
  const Button({super.key, required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Styles.darkPrimaryColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
            child: Text(
          text,
          style: Styles.textStyle.copyWith(color: Colors.white),
        )),
      ),
    );
  }
}
