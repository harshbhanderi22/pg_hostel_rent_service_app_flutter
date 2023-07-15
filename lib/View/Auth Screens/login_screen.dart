import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:real/Utils/Components/button.dart';
import 'package:real/Utils/Components/common_textfield.dart';
import 'package:real/Utils/Components/logo_box.dart';
import 'package:real/Utils/Components/other_sign_in_method.dart';
import 'package:real/Utils/Routes/route_name.dart';
import 'package:real/Utils/app_styles.dart';
import 'package:real/Viewmodel/Auth%20View%20Models/login_viewmodel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Styles.bgColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LogoBox(),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Welcome Back!",
                  style: Styles.headLineStyle2,
                ),
                SizedBox(
                  height: 30.h,
                ),
                CommonTextField(
                  controller: _emailController,
                  hint: "Email Address",
                ),
                Consumer<LoginViewModel>(builder: (context, value, child) {
                  return CommonTextField(
                    controller: _passwordController,
                    hint: "Password",
                    obsecure: value.getObsecurity,
                    suffix: value.getObsecurity
                        ? Icons.visibility_off
                        : Icons.visibility,
                    onSuffixTap: () {
                      value.setObsecurity(!value.getObsecurity);
                    },
                  );
                }),
                InkWell(
                  onTap: () {
                    //TODO: Implement Forgot Password
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        margin: EdgeInsets.only(
                          top: 5.h,
                          right: 27.w,
                        ),
                        child: const Text("Forgot Password?")),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Consumer<LoginViewModel>(builder: (context, value, child) {
                  return Container(
                      margin: EdgeInsets.only(
                          left: 20.w, right: 20.w, bottom: 15.h),
                      child: Button(
                          child: value.getLoading
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.white),
                                ),
                          onTap: () {
                            value.validateLoginDetailsAndLogin(
                                _emailController.text,
                                _passwordController.text);
                                Navigator.of(context).pushNamed(RoutesName.homeScreen);
                          }));
                }),
                SizedBox(
                  height: 10.h,
                ),
                const OtherLoginMethods(),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: Styles.textStyle.copyWith(fontSize: 14.sp),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(RoutesName.signUpScreen);
                      },
                      child: Text(
                        ' Register',
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.blue),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
