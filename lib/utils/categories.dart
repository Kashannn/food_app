import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../app_constants/app_constants.dart';
class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _CategoryItem(
            assetName: 'assets/manubar.svg',
            label: '',
          ),
          _CategoryItem(
            assetName: 'assets/american.svg',
            label: 'American',
          ),
          _CategoryItem(
            assetName: 'assets/burgers.svg',
            label: 'Burgers',
          ),
          _CategoryItem(
            assetName: 'assets/breakfast.svg',
            label: 'Breakfast',
          ),
          _CategoryItem(
            assetName: 'assets/american.svg',
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