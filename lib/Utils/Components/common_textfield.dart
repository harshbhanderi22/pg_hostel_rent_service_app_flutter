import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData? suffix;
  final Function? onSuffixTap;
  final bool? obsecure;

  const CommonTextField(
      {super.key,
      required this.controller,
      required this.hint,
      this.obsecure,
      this.suffix,
      this.onSuffixTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.r))),
      child: TextFormField(
        cursorColor: Colors.grey,
        obscureText: obsecure ?? false,
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            suffixIcon: InkWell(
                onTap: () {
                  onSuffixTap!();
                },
                child: Icon(suffix, color: Colors.grey))),
      ),
    );
  }
}
