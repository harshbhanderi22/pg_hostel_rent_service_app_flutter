import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:real/Utils/Components/button.dart';
import 'package:real/Utils/Components/common_textfield.dart';
import 'package:real/Utils/Components/logo_box.dart';
import 'package:real/Utils/Components/other_sign_in_method.dart';
import 'package:real/Utils/Routes/route_name.dart';
import 'package:real/Utils/app_styles.dart';
import 'package:real/Viewmodel/Auth%20View%20Models/register_viewmodel.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Styles.bgColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 52.h),
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
                  "Create Account Here",
                  style: Styles.headLineStyle2,
                ),
                SizedBox(
                  height: 30.h,
                ),
                CommonTextField(
                  controller: _nameController,
                  hint: "Name",
                ),
                CommonTextField(
                  controller: _emailController,
                  hint: "Email Address",
                ),
                CommonTextField(
                  controller: _passwordController,
                  hint: "Password",
                ),
                Consumer<RegisterViewModel>(builder: (context, value, child) {
                  return CommonTextField(
                    controller: _confirmPasswordController,
                    hint: "Confirm Password",
                    obsecure: value.getObsecurity,
                    suffix: value.getObsecurity
                        ? Icons.visibility_off
                        : Icons.visibility,
                    onSuffixTap: () {
                      value.setObsecurity(!value.getObsecurity);
                    },
                  );
                }),
                SizedBox(
                  height: 20.h,
                ),
                Consumer<RegisterViewModel>(builder: (context, value, child) {
                  return Container(
                      margin: EdgeInsets.only(
                          left: 20.w, right: 20.w, bottom: 15.h),
                      child: Button(
                          child: value.getLoading
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : Text(
                                  "Register",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.white),
                                ),
                          onTap: () {
                            value.validateRegisterDetailsAndRegister(
                                _nameController.text,
                                _emailController.text,
                                _passwordController.text,
                                _confirmPasswordController.text);
                            Navigator.of(context)
                                .pushNamed(RoutesName.homeScreen);
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
                      'Already have an account? ',
                      style: Styles.textStyle.copyWith(fontSize: 14.sp),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(RoutesName.loginScreen);
                      },
                      child: Text(
                        ' Log In',
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
