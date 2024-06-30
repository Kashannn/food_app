import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/app_constants/app_constants.dart';
import 'package:food_app/app_constants/images_constants.dart';
import 'package:get/get.dart';

class PremimumGroceries extends StatefulWidget {
  const PremimumGroceries ({super.key});

  @override
  State<PremimumGroceries > createState() => _PremimumGroceriesState();
}

class _PremimumGroceriesState extends State<PremimumGroceries > {
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
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  children: [
                    RestaurantButton(
                      imagePath:AppImages.Alcampo,
                      name: "Alcampo"
                          "",
                      onTap: () {
                        Get.toNamed('/AlcampoDashboard');
                      },
                    ),
                    RestaurantButton(
                      imagePath:AppImages.localMerchants,
                      name: 'Local Merchants',
                      onTap: () {
                        Get.toNamed('/Kfc');
                      },
                    ),
                    RestaurantButton(
                      imagePath:AppImages.superMart,
                      name: 'Supermart',
                      onTap: () {
                        Get.toNamed('/PizzaHut');
                      },
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h),
                child: Text(
                  'Groceries',
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
            SvgPicture.asset(imagePath, height: 100.h),
            SizedBox(height: 10.h),
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

