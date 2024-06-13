import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../app_constants/app_constants.dart';
class AllPromotionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 112.h,
          width: 135.w,
          decoration: BoxDecoration(
            color: kColorGrey.withOpacity(0.1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
          ),
          child: Stack(
            children: [
              Container(
                height: 122.h,
                width: 271.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/fooddashboard.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    topRight: Radius.circular(8.r),
                  ),
                ),
              ),
              Positioned(
                top: 20.h,
                right: 0,
                child: Container(
                  height: 14.h,
                  width: 34.w,
                  decoration: BoxDecoration(
                    color: kColorLightPrimary2,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.r),
                      bottomLeft: Radius.circular(8.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('20%', style: kStyleWhite10400),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 61.h,
          width: 135.w,
          decoration: BoxDecoration(
            color: kColorGrey.withOpacity(0.1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Brunch', style: kStyleBlackRubik18500),
              Text('94 places', style: kStyleBlack12400),
            ],
          ),
        ),
      ],
    );
  }
}