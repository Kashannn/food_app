import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/utils/custom_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../app_constants/app_constants.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Column(
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
            padding: const EdgeInsets.only(left: 15, right: 16),
            child: Column(
              children: [
                Container(
                  height: 60.h,
                  width: 362.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    inputDecoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Your phone number',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    textStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 20.h),
                GradientButton(
                  text: 'Continue',
                  onPressed: () {},
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: kColorGrey,
                        thickness: 1,
                      ),
                    ),
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
                    Expanded(
                      child: Divider(
                        color: kColorGrey,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                SignInButton(
                  Buttons.facebook,
                  onPressed: () {},
                ),
                SizedBox(height: 20.h),
                SignInButton(
                  Buttons.google,
                  onPressed: () {},
                ),
                SizedBox(height: 20.h),
                SignInButton(
                  Buttons.apple,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
