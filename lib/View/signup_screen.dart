import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:real/Utils/Components/button.dart';
import 'package:real/Utils/Components/common_textfield.dart';
import 'package:real/Utils/Components/login_method_circle.dart';
import 'package:real/Utils/Components/logo_box.dart';
import 'package:real/Utils/Routes/route_name.dart';
import 'package:real/Utils/app_styles.dart';
import 'package:real/Utils/general_utils.dart';
import 'package:real/Viewmodel/auth_viewmodel.dart';

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
              Consumer<AuthViewModel>(builder: (context, value, child) {
                return CommonTextField(
                  controller: _confirmPasswordController,
                  hint: "Confirm Password",
                  obsecure: value.getRegisterPasswordVisibility,
                  suffix: value.getRegisterPasswordVisibility
                      ? Icons.visibility_off
                      : Icons.visibility,
                  onSuffixTap: () {
                    value.setRegisterPasswordVisible(
                        !value.getRegisterPasswordVisibility);
                  },
                );
              }),
              SizedBox(
                height: 20.h,
              ),
              Consumer<AuthViewModel>(builder: (context, value, child) {
                return Container(
                    margin:
                        EdgeInsets.only(left: 20.w, right: 20.w, bottom: 15.h),
                    child: Button(
                        child: value.getRegisterLoading
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Text(
                                "Register",
                                style: Styles.textStyle.copyWith(
                                    color:
                                        const Color.fromARGB(255, 48, 30, 30)),
                              ),
                        onTap: () {
                          value.validateRegisterDetailsAndRegister(
                              _nameController.text,
                              _emailController.text,
                              _passwordController.text,
                              _confirmPasswordController.text);
                        }));
              }),
              SizedBox(
                height: 10.h,
              ),
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
                  Consumer<AuthViewModel>(builder: ((context, value, child) {
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
                  Consumer<AuthViewModel>(builder: ((context, value, child) {
                    return LoginMethodCircle(
                      onTap: () {
                        value.signInWithFacebook();
                      },
                      path: "assets/images/facebook2.png",
                    );
                  })),
                ],
              ),
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
