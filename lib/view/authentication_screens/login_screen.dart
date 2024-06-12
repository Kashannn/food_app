import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

import '../../app_constants/app_constants.dart';
import '../../utils/custom_button.dart';
import '../../utils/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 1.sw,
                height: 1.sh,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        width: 1.sw,
                        height: 475.h,
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/login.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 377.h,
                      child: Container(
                        width: 1.sw,
                        height: 452.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.r),
                            topRight: Radius.circular(60.r),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 75.h, left: 29.w, right: 158.w),
                              child: Text(
                                'Login To Your Account',
                                style: kStyleBlack18500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 21.h, left: 21.w, right: 21.w),
                              child: CustomLabeledTextField(
                                labelStyle: kStyleBlack14400,
                                hintTextStyle: kStyleBlack14400,
                                controller: emailController,
                                hintText: 'Email',
                                passwordfield: false,
                                focusNode: emailFocusNode,
                                nextFocusNode: passwordFocusNode,
                              ),
                            ),
                            18.verticalSpace,
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 21.h, left: 21.w, right: 21.w),
                              child: CustomLabeledTextField(
                                labelStyle: kStyleBlack14400,
                                hintTextStyle: kStyleBlack14400,
                                controller: passwordController,
                                hintText: 'Password',
                                passwordfield: true,
                                focusNode: passwordFocusNode,
                              ),
                            ),
                            18.verticalSpace,
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 21),
                              child: GradientButton(
                                text: 'Login',
                                onPressed: () {
                                  print('Login');
                                },
                              ),
                            ),
                            25.verticalSpace,
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 70.w),
                              child: Row(
                                children: [
                                  Text(
                                    'Don’t have an account?',
                                    style: kStyleBlack14500,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed('/signup');
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: kStyleBlack14500.copyWith(
                                        color: const Color(0xFF2CC879),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
