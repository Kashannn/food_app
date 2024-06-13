import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../app_constants/app_constants.dart';
import 'RestaurantCard.dart';
import 'all_promotion_card.dart';

class TopRestaurantSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Container(
        height: 822.h,
        width: 401.w,
        decoration: BoxDecoration(
          color: kColorGrey.withOpacity(0.1),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Restaurant',
                  style: kStyleBlack18600,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kColorLightPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    minimumSize: Size(65.0, 26.0),
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            20.0), // Adjust horizontal padding as needed
                  ),
                  onPressed: () {},
                  child: Text('See all', style: kStyleBlack12400),
                ),
              ],
            ),
            16.verticalSpace,
            SizedBox(
              height: 220.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: RestaurantCard(),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/promotionIcon.svg',
                        height: 25.h, width: 25.w),
                    SizedBox(width: 7.w),
                    Text(
                      'Promotions',
                      style: kStyleBlack18600,
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kColorLightPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    minimumSize: Size(65.0, 26.0),
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            20.0), // Adjust horizontal padding as needed
                  ),
                  onPressed: () {},
                  child: Text('See all', style: kStyleBlack12400),
                ),
              ],
            ),
            SizedBox(
              height: 220.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: AllPromotionCard(),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/promotionIcon.svg',
                        height: 25.h, width: 25.w),
                    SizedBox(width: 7.w),
                    Text(
                      'Super',
                      style: kStyleBlack18600,
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kColorLightPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    minimumSize: Size(65.0, 26.0),
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            20.0), // Adjust horizontal padding as needed
                  ),
                  onPressed: () {},
                  child: Text('See all', style: kStyleBlack12400),
                ),
              ],
            ),
            18.verticalSpace,

          ],
        ),
      ),
    );
  }
}
