import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/app_constants/app_constants.dart';
import 'package:food_app/app_constants/images_constants.dart';
import 'package:food_app/utils/Custom%20_app_bar.dart';
import 'package:food_app/utils/custom_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Back', context: context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            105.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 31.w),
              child: Image.asset(
                AppImages.location,
                width: 330.w,
                height: 312.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Food wasy with real-time \ntrip updates',
                style: kStyleBlack20500,
              ),
            ),
            14.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Allow push notification to receive trip status',
                style: kStyleBlack16400.copyWith(
                  color: Color(0xFFA0A0A0),
                ),
              ),
            ),
            138.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: GradientButton(
                  text: 'Next',
                  onPressed: () {
                    Get.toNamed('/UseLocationScreen');
                  }),
            ),
          ],
        ));
  }
}
