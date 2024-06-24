import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/app_constants/app_constants.dart';

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
              color: Colors.green,
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
                        iconPath: 'assets/groceries.svg',
                        label: 'Groceries',
                      ),
                      CategoryButton(
                        iconPath: 'assets/superfodvo.svg',
                        label: 'SuperFodvo',
                      ),
                      CategoryButton(
                        iconPath: 'assets/pharmacy.svg',
                        label: 'Pharmacy & Beauty',
                      ),
                      CategoryButton(
                        iconPath: 'assets/premium_restaurants.svg',
                        label: 'Premium Restaurants',
                      ),
                      CategoryButton(
                        iconPath: 'assets/food.svg',
                        label: 'Food',
                      ),
                      CategoryButton(
                        iconPath: 'assets/shops_gifts.svg',
                        label: 'Shops & Gifts',
                      ),
                      CategoryButton(
                        iconPath: 'assets/drinks.svg',
                        label: 'Drinks',
                      ),
                      CategoryButton(
                        iconPath: 'assets/courier.svg',
                        label: 'Courier',
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

  CategoryButton({required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
