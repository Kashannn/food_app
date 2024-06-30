import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/app_constants/images_constants.dart';

import '../../app_constants/app_constants.dart';
class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _CategoryItem(
            assetName:AppImages.manuBar,
            label: '',
          ),
          _CategoryItem(
            assetName: AppImages.american,
            label: 'American',
          ),
          _CategoryItem(
            assetName: AppImages.burgers,
            label: 'Burgers',
          ),
          _CategoryItem(
            assetName: AppImages.breakfast,
            label: 'Breakfast',
          ),
          _CategoryItem(
            assetName: AppImages.american,
            label: 'American',
          ),
        ],
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
      radius: 35.r,
      backgroundColor: kColorLightPrimary.withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            assetName,
            width: 35.w,
            height: 35.h,
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