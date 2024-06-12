import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/utils/Custom%20_app_bar.dart';
import 'package:food_app/utils/custom_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../app_constants/app_constants.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Back',
          context: context,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Text(
                  'What’s Your Name',
                  style: kStyleBlack24500,
                ),
                SizedBox(height: 18.h),
                Text(
                  'Let us know to properly address you',
                  style: kStyleBlack16400.copyWith(color: kColorGrey),
                ),
                SizedBox(height: 71.h),
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60.r,
                        backgroundColor: Color(0xFFD0D0D0),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Color(0xFF2CC879),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 20.r,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 43.h),
                buildTextField('First Name'),
                SizedBox(height: 20.h),
                buildTextField('Last Name'),
                SizedBox(height: 10.h),
                Text(
                  'At least 1 number or a special character',
                  style: kStyleBlack14500.copyWith(color: Color(0xFFA6A6A6)),
                ),
                SizedBox(height: 43.h),
                GradientButton(
                    text: 'Next',
                    onPressed: () {
                      Get.toNamed('/LocationScreen');
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return TextFormField(
      style: kStyleBlack16500.copyWith(color: kColorBlack),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: kStyleBlack16500,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: kColorGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: kColorGrey),
        ),
      ),
    );
  }
}
