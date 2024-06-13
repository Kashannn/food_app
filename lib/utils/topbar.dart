import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_constants/app_constants.dart';
class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 31.h, left: 102.w, right: 80.w),
      child: Container(
        height: 36.h,
        width: 219.w,
        decoration: BoxDecoration(
          color: kColorBlack,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 10.h, left: 3.w),
          child: Text(
            'Get Your First delivery free 🔥',
            style: kStyleWhite12500,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}