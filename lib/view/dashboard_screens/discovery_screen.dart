import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/app_constants/app_constants.dart';
import 'package:food_app/app_constants/images_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: 1.sw,
              color: kColorLightPrimary2,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person, color: Colors.green),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'What can we get you',
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.r),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: kStyleBlack14500,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.download, color: Colors.green),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      CategoryButton(
                        iconPath: AppImages.groceries,
                        label: 'Groceries',
                        onTap: () {
                          Get.toNamed('/PremimumGroceries');
                          print('Groceries tapped');
                        },
                      ),
                      CategoryButton(
                        iconPath: AppImages.superFodvo,
                        label: 'SuperFodvo',
                        onTap: () {
                          print('SuperFodvo tapped');
                        },
                      ),
                      CategoryButton(
                        iconPath: AppImages.pharmacy,
                        label: 'Pharmacy & Beauty',
                        onTap: () {
                          print('Pharmacy & Beauty tapped');
                        },
                      ),
                      CategoryButton(
                        iconPath: AppImages.premiumRestaurants,
                        label: 'Premium Restaurants',
                        onTap: () {
                          Get.toNamed('/PremimumRestaurants');
                          print('Premium Restaurants tapped');
                        },
                      ),
                      CategoryButton(
                        iconPath: AppImages.food,
                        label: 'Food',
                        onTap: () {
                          print('Food tapped');
                        },
                      ),
                      CategoryButton(
                        iconPath: AppImages.shopsGifts,
                        label: 'Shops & Gifts',
                        onTap: () {
                          print('Shops & Gifts tapped');
                        },
                      ),
                      CategoryButton(
                        iconPath: AppImages.groceries,
                        label: 'Drinks',
                        onTap: () {

                          print('Drinks tapped');
                        },
                      ),
                      CategoryButton(
                        iconPath: AppImages.courier,
                        label: 'Courier',
                        onTap: () {

                          print('Courier tapped');
                        },
                      ),
                    ],
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

class CategoryButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onTap;

  CategoryButton({
    required this.iconPath,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 50.w,
              height: 50.h,
            ),
            SizedBox(height: 8.h),
            Text(
              label,
              textAlign: TextAlign.center,
              style: kStyleBlack14500,
            ),
          ],
        ),
      ),
    );
  }
}
