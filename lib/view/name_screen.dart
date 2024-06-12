import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/utils/Custom%20_app_bar.dart';
import 'package:food_app/utils/custom_button.dart';

import '../app_constants/app_constants.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Scaffold(
          appBar: CustomAppBar(
            title: 'Back',
            context: context,
          ),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 16.w, right: 160.w),
                child: Text(
                  'What’s Yur Name',
                  style: kStyleBlack24500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 18.h,
                  left: 17.w,
                  right: 87.w,
                ),
                child: Text(
                  'Let us know to property address ypu',
                  style: kStyleBlack16400.copyWith(
                    color: kColorGrey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 71.h, left: 136.w, right: 136.w),
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
              43.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    hintStyle: kStyleBlack16500,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: kColorGrey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: kColorGrey,
                      ),
                    ),
                  ),
                ),
              ),
              20.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    hintStyle: kStyleBlack16500,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: kColorGrey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: kColorGrey,
                      ),
                    ),
                  ),
                ),
              ),
              10.verticalSpace,
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 90.w),
                child: Text(
                  'Atleast 1 number or a special character',
                  style: kStyleBlack14500.copyWith(
                    color: Color(0xFFA6A6A6),
                  ),
                ),
              ),
              43.verticalSpace,
              GradientButton(text: 'Next', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
