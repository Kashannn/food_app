import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/Custom%20_app_bar.dart';
import 'package:food_app/utils/custom_button.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../app_constants/app_constants.dart';
import '../utils/Social_Button.dart';
import '../utils/build_phone_number_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar:CustomAppBar(
        title: 'Back',
        context: context,
      ),
      body: _buildBody(),
    );
  }


  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 16, right: 50),
            child: Text(
              'Sign up with your email or phone number',
              style: kStyleBlack24500,
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                buildPhoneNumberField(),
                SizedBox(height: 20.h),
                GradientButton(
                  text: 'Continue',
                  onPressed: () {
                    Get.toNamed('/VerificationOTP');
                  },
                ),
                SizedBox(height: 20.h),
                _buildOrDivider(),
                SizedBox(height: 20.h),
                buildSocialButton(
                  color: const Color(0xFF1877F2),
                  assetPath: 'assets/Facebook Logo.svg',
                  text: 'Sign up with Facebook',
                  textStyle: kStyleBlack20700.copyWith(color: kColorWhite),
                  onPressed: () {},
                ),
                SizedBox(height: 20.h),
                buildSocialButton(
                  color: kColorWhite,
                  assetPath: 'assets/Google Logo.svg',
                  text: 'Continue with Google',
                  textStyle: kStyleBlack20500,
                  onPressed: () {},
                ),
                SizedBox(height: 20.h),
                buildSocialButton(
                  color: kColorBlack,
                  assetPath: 'assets/Apple Logo.svg',
                  text: 'Continue with Apple',
                  textStyle: kStyleBlack20700.copyWith(color: kColorWhite),
                  onPressed: () {},
                ),
                SizedBox(height: 17.h),
                _buildSignupPrompt(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Divider(color: kColorGrey, thickness: 1)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Text(
            'or',
            style: TextStyle(
              color: kColorGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(child: Divider(color: kColorGrey, thickness: 1)),
      ],
    );
  }

  Widget _buildSignupPrompt() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 55.w),
      child: Row(
        children: [
          Text(
            'Already have an account? ',
            style: kStyleBlack14500,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/login');
            },
            child: Text(
              'Sign in',
              style: kStyleBlack14500.copyWith(
                color: const Color(0xFF2CC879),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
