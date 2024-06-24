import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../app_constants/app_constants.dart';
import '../../utils/Custom _app_bar.dart';
import '../../utils/custom_button.dart';

class UseLocationScreen extends StatefulWidget {
  const UseLocationScreen({super.key});

  @override
  State<UseLocationScreen> createState() => _UseLocationScreenState();
}

class _UseLocationScreenState extends State<UseLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Back', context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 98.h),
        child: Container(
          width: 340.w,
          height: 480.h,
          decoration: BoxDecoration(
            color: kColorWhite,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: SvgPicture.asset(
                  'assets/LocationIcon.svg',
                  width: 150.w,
                  height: 150.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.0, left: 48.w, right: 48.w),
                child: Text(
                  '“Fdovo” Would Like to Send you Notifications',
                  style: kStyleBlack18500,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                child: Text(
                  'Choose your location to start finding the requests around you',
                  style: kStyleBlack14400.copyWith(color: kColorGrey),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
                child: GradientButton(
                  text: 'Use My Location',
                  onPressed: () {
                    Get.toNamed('/WelcomeScreen');
                  },
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kColorWhite,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                onPressed: () {},
                child: Text('Skip for Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
