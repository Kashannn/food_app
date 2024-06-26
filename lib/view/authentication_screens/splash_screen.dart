import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/app_constants/images_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../app_constants/app_constants.dart';
import '../../utils/custom_button.dart';
// Import the GradientButton

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 95.h, left: 42.w),
              child: Image.asset(
                AppImages.splash,
                fit: BoxFit.contain,
                width: 309.w,
                height: 285.h,
              ),
            ),
            90.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 54.w),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'The Fastest Way To Get \n',
                      style: kStyleBlack24700,
                    ),
                    TextSpan(
                      text: 'Food',
                      style: kStyleBlack24700.copyWith(
                        color: const Color(0xFFF2CC879),
                      ),
                    ),
                    TextSpan(
                      text: ' Delivered',
                      style: kStyleBlack24700,
                    ),
                  ],
                ),
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 42.w),
              child: Text(
                'Buying food quickly is a good experience',
                style: kStyleBlack14400,
              ),
            ),
            46.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 37.w),
              child: GradientButton(
                text: 'Sign In',
                onPressed: () {
                  Get.toNamed('/login');
                },
              ),
            ),
            23.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.w),
              child: Row(
                children: [
                  Text(
                    'Don’t have an account?',
                    style: kStyleBlack14500,
                  ),
                  Text(
                    'Sign Up',
                    style: kStyleBlack14500.copyWith(
                      color: const Color(0xFF2CC879),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
