import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:real/Utils/Components/login_method_circle.dart';
import 'package:real/Viewmodel/Auth%20View%20Models/other_method_viewmodel.dart';

class OtherLoginMethods extends StatelessWidget {
  const OtherLoginMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
             Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Or',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    ),
    SizedBox(
      height: 10.h,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer<OtherLoginMethodViewModel>(builder: ((context, value, child) {
          return LoginMethodCircle(
            onTap: () {
              value.signInWithGoogle();
            },
            path: "assets/images/google.png",
          );
        })),
        SizedBox(
          width: 30.w,
        ),
        Consumer<OtherLoginMethodViewModel>(builder: ((context, value, child) {
          return LoginMethodCircle(
            onTap: () {
              value.signInWithFacebook();
            },
            path: "assets/images/facebook2.png",
          );
        })),
      ],
    ),
    
      ]
    );
  }
}