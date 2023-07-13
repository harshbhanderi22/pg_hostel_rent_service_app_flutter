import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real/Utils/app_styles.dart';

 
class IntroCard extends StatelessWidget {
  const IntroCard({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 180.h,
            margin: EdgeInsets.symmetric(
                horizontal: 12.w, vertical: 12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/introHome.jpg"),
              ),
            ),
          ),
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            child: Text(
                'Effortlessly find the perfect property or rental accommodation to suit your needs.',
                style: Styles.textStyle.copyWith(fontSize: 14.sp)),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                height: 25.h,
                width: 15.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Styles.bgColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r),
                      )),
                ),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context , BoxConstraints constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                          (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                            width: 6.w,
                            height: 4.h,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Styles.bgColor,
                              ),
                            ),
                          )),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 25.h,
                width: 15.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Styles.bgColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        bottomLeft: Radius.circular(15.r),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 12.w, right: 12.w , bottom: 12.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Unlock Your Dream Space,",
                  style: GoogleFonts.caveat(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500,
                      color: Styles.textColor),
                ),
                Text(
                  "With us...",
                  style: GoogleFonts.caveat(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500,
                      color: Styles.textColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}