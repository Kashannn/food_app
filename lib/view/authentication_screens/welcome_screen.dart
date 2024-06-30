import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/app_constants/app_constants.dart';
import 'package:food_app/app_constants/images_constants.dart';
import 'package:food_app/utils/components/custom_button.dart';
import 'package:get/get.dart';

import '../../utils/components/Custom _app_bar.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Back', context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 101.h),
            Center(
              child: SvgPicture.asset(
              AppImages.frame,
                width: 159.w,
                height: 159.h,
              ),
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.w),
              child: Text(
                'Welcome To Fdovo Food',
                style: kStyleBlack23500,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.w),
              child: Text(
                'Essential services to earning opportunities. Your SuperApp',
                style: kStyleBlack16500.copyWith(color: kColorGrey),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            GradientButton(
              text: 'Home',
              onPressed: () {
                Get.toNamed('/Dashboard');
              },
            ),
            SizedBox(height: 27.h),
          ],
        ),
      ),
    );
  }
}
