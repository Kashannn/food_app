import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/app_constants/images_constants.dart';
import 'package:food_app/utils/components/custom_bottom_navigation_bar.dart';

import '../../../app_constants/app_constants.dart';
import '../../../utils/components/all_promotion_card.dart';

class AlcampoDashboard extends StatefulWidget {
  const AlcampoDashboard({super.key});

  @override
  State<AlcampoDashboard> createState() => _AlcampoDashboardState();
}

class _AlcampoDashboardState extends State<AlcampoDashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 1313.h,
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200.h,
                  child: Image.asset(
                    AppImages.alcampoDashboard,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 180.h,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1200.h,
                        decoration: BoxDecoration(
                          color: kColorWhite,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                            topRight: Radius.circular(20.r),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:<Widget> [
                                SizedBox(height: 70.h),
                                Text(
                                  'Alcampo',
                                  style: kStyleBlackRubik24700,
                                ),
                                Text("Alcampo somos más de 20.000 profesionales que cada .. More",
                                style:kStyleGrey312700,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
          
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      _CategoryItem(
                                        assetName: AppImages.thumb,
                                        label: '80%',
                                      ),
                                      _CategoryItem(
                                        assetName: AppImages.clock2,
                                        label: '15-25',
                                      ),
                                      _CategoryItem(
                                        assetName: AppImages.person2,
                                        label: '4,49k',
                                      ),
                                      _CategoryItem(
                                        assetName: AppImages.prime,
                                        label: 'Prime',
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left:43.w , right: 39.w,top: 34.h,bottom: 26.h),
                                  child: Container(
                                    width: double.infinity,
                                    height: 36.h,
                                    decoration: BoxDecoration(
                                      color: kColorGrey4,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(28.r),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Search in Alcampo',
                                        style: kStyleBlack14500,
                                      ),
                                    ),
          
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Shop by category',
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
                                GridView(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    childAspectRatio: 0.75,
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
                                    buildGridItem(AppImages.fruits, 'Fresh Fruits & Vegetables'),
                                    buildGridItem(AppImages.cookingOil, 'Cooking Oil & Ghee'),
                                    buildGridItem(AppImages.fish, 'Meat & Fish'),
                                    buildGridItem(AppImages.bakery, 'Bakery & Snacks'),
                                    buildGridItem(AppImages.egg, 'Dairy & Eggs'),
                                    buildGridItem(AppImages.coke, 'Beverages'),
                                    buildGridItem(AppImages.dairy, 'Meat & Fish'),
                                    buildGridItem(AppImages.vegetable, 'Fresh Fruits & Vegetables'),
                                  ],
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 142.h,
                  left: 72.w,
                  child: Material(
                    elevation: 4.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: kColorWhite,
                      radius: 50.r,
                      child: Image.asset(
                        AppImages.auchan,
                        fit: BoxFit.fill,
                        height: 75.h,
                        width: 80.w,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
class _CategoryItem extends StatelessWidget {
  final String assetName;
  final String label;

  const _CategoryItem({
    required this.assetName,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30.r,
      backgroundColor: kColorLightPrimary.withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            assetName,
            width: 30.w,
            height: 30.h,
          ),
          if (label.isNotEmpty) ...[
            Text(
              label,
              style: kStyleBlack8500,
            ),
          ],
        ],
      ),
    );
  }
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
          width: 75.0.w, // Adjusted width to fit 4 items in a row
          height: 75.0.h, // Adjusted height to fit 4 items in a row
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
