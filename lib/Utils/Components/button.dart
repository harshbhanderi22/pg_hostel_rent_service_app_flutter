import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real/Utils/app_styles.dart';

class Button extends StatelessWidget {
  final Widget child;
  final Function onTap;
  const Button({super.key, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: Styles.darkPrimaryColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
            child: child),
      ),
    );
  }
}
