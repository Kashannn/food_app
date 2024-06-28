import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/app_constants/images_constants.dart';
import 'package:get/get.dart';

import '../app_constants/app_constants.dart';
import 'custom_switch.dart';
class MenuAddressToggleRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 398.w,
        height: 32.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 30.r,
              backgroundColor: kColorLightPrimary2,
              child: GestureDetector(
                onTap:(){
                  Get.toNamed('/Discovery');
                },
                child: SvgPicture.asset(
                 AppImages.menu,
                  width: 20.w,
                  height: 20.h,
                ),
              ),
            ),
            Text('Menu', style: kStyleBlack14500),
            Text('Jl. Soekarno Hatta 15A', style: kStyleBlack14300),
            Icon(Icons.arrow_drop_down, color: Color(0xFF2CC879)),
            ToggleButton(),
          ],
        ),
      ),
    );
  }
}
