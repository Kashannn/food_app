import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/app_constants/images_constants.dart';

import '../../app_constants/app_constants.dart';

class PromotionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        height: 202.h,
        width: 398.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: kColorLightPrimary2,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset(
                    AppImages.background,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10.h,
              left: 235.w,
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  AppImages.handFood,
                  width: 153.w,
                  height: 200.h,
                ),
              ),
            ),
            Positioned(
              top: 43.h,
              left: 22.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get your 30% daily\ndiscount now!',
                    style: kStyleBlack18500.copyWith(color: kColorWhite),
                  ),
                  SizedBox(height: 31.h),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kColorBlack),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 11.5.h,
                        horizontal: 40.w,
                      ),
                      child: Text(
                        'Order Now',
                        style: kStyleWhite10400.copyWith(fontSize: 14.sp),
                      ),
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
