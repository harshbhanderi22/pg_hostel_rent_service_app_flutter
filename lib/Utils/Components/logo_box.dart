import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real/Utils/app_styles.dart';

class LogoBox extends StatelessWidget {
  const LogoBox({
    super.key,
  });

  //TODO: Add Logo Here
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.r),
          boxShadow: [Styles.greyShadow]),
    );
  }
}
