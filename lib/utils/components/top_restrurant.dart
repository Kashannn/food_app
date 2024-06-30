import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/app_constants/images_constants.dart';

import '../../app_constants/app_constants.dart';
import 'RestaurantCard.dart';
import 'all_promotion_card.dart';

class TopRestaurantSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Container(
        height: 1100.h,
        width: 401.w,
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
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                    SvgPicture.asset(AppImages.promotionIcon,
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
                    SvgPicture.asset(AppImages.promotionIcon,
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
            10.verticalSpace,
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                buildGridItem(AppImages.fruits, 'Fresh Fruits & Vegetables'),
                buildGridItem(AppImages.cookingOil, 'Cooking Oil & Ghee'),
                buildGridItem(AppImages.fish, 'Meat & Fish'),
                buildGridItem(AppImages.bakery, 'Bakery & Snacks'),
                buildGridItem(AppImages.egg, 'Dairy & Eggs'),
                buildGridItem(AppImages.coke, 'Beverages'),
                buildGridItem(AppImages.dairy, 'Meat & Fish'),
                buildGridItem(AppImages.vegetable, 'Fresh Fruits & Vegetables'),
                buildGridItem(AppImages.vegetable, 'Cooking Oil & Ghee'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildGridItem(String imagePath, String title) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: kColorLightPrimary3.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: kColorLightPrimary3,
              width: 2.0,
            ),
          ),
          child: SizedBox(
            width: 85.0.w,
            height: 85.0.h,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: kStyleBlack12400,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
