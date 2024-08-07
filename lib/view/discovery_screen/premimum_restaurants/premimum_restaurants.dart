import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/app_constants/app_constants.dart';
import 'package:food_app/app_constants/images_constants.dart';
import 'package:get/get.dart';

class PremimumRestaurants extends StatefulWidget {
  const PremimumRestaurants({super.key});

  @override
  State<PremimumRestaurants> createState() => _PremimumRestaurantsState();
}

class _PremimumRestaurantsState extends State<PremimumRestaurants> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color:kColorLightPrimary2,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, color: Colors.green),
                    ),
                    SizedBox(width: 8.h),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'What can we get you',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: kStyleBlack14500,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.download, color: Colors.green),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 20,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  children: [
                    RestaurantButton(
                      imagePath:AppImages.mcdonald,
                      name: "McDonald's",
                      onTap: () {
                        Get.toNamed('/McDonalds');
                      },
                    ),
                    RestaurantButton(
                      imagePath:AppImages.kfc,
                      name: 'KFC',
                      onTap: () {
                        Get.toNamed('/Kfc');
                      },
                    ),
                    RestaurantButton(
                      imagePath:AppImages.pizzaHut,
                      name: 'Pizza Hut',
                      onTap: () {
                        Get.toNamed('/PizzaHut');
                      },
                    ),
                    RestaurantButton(
                      imagePath:AppImages.subway,
                      name: 'Subway',
                      onTap: () {
                        Get.toNamed('/Subway');
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h),
                child: Text(
                  'Premium Restaurants',
                  style: kStyleBlack24700.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantButton extends StatelessWidget {
  final String imagePath;
  final String name;
  final VoidCallback onTap;

  RestaurantButton(
      {required this.imagePath, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 80.h),
            SizedBox(height: 8.h),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
