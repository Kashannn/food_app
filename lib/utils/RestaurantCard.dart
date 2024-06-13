import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../app_constants/app_constants.dart';
class RestaurantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 122.h,
          width: 271.w,
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
                top: 70.h,
                right: 0,
                child: Container(
                  height: 26.h,
                  width: 115.w,
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
                      Text('€3.00 off delivery', style: kStyleWhite10400),
                      SvgPicture.asset('assets/officon.svg'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 87.h,
          width: 271.w,
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
              Text('Crazy tacko', style: kStyleBlackRubik18500),
              Text('Delicious tacos, appetizing snacks, fr...', style: kStyleBlack12400),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/truck.svg'),
                  Text('€3,00', style: kStyleBlack12400),
                  SvgPicture.asset('assets/clock.svg'),
                  Text('40-50min', style: kStyleBlack12400),
                  SvgPicture.asset('assets/star.svg'),
                  Text('9,5', style: kStyleBlack12400),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}