import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/utils/custom_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../app_constants/app_constants.dart';

class VerificationOTP extends StatefulWidget {
  const VerificationOTP({super.key});

  @override
  State<VerificationOTP> createState() => _VerificationOTPState();
}

class _VerificationOTPState extends State<VerificationOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Back'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 87.w, right: 70.w),
              child: Text(
                'Phone verification',
                style: kStyleBlack24500,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.h, left: 56.w, right: 57.w),
              child: Text(
                'Enter your OTP code',
                style: kStyleBlack16400.copyWith(
                  color: const Color(0xFFA0A0A0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.h, left: 51.w, right: 56.w),
              child: OtpTextField(
                numberOfFields: 5,
                borderColor: const Color(0xFFA0A0A0),
                focusedBorderColor: const Color(0xFFA0A0A0),
                showFieldAsBox: true,
                fieldWidth: 40.w,
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                textStyle: kStyleBlack16400,
                onCodeChanged: (String code) {
                  // Handle validation or checks here
                },
                onSubmit: (String verificationCode) {
                  // Handle validation or checks here
                }, // end onSubmit
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 57, right: 58),
              child: Row(
                children: [
                  Text(
                    'Didn’t receive code? ',
                    style: kStyleBlack14500,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/login');
                    },
                    child: Text(
                      'Resend again ',
                      style: kStyleBlack14500.copyWith(
                        color: const Color(0xFF2CC879),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 221.h, left: 26.w, right: 27.w),
              child: GradientButton(
                text: 'Verify',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
