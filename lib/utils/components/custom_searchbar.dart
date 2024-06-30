import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_constants/app_constants.dart';
class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: TextField(
        style: kStyleBlack14500,
        decoration: InputDecoration(
          hintText: 'Search for food',
          hintStyle: kStyleBlack14500.copyWith(color: kColorGrey),
          prefixIcon: Icon(Icons.search, color: kColorGrey),
          filled: true,
          fillColor: kColorGrey.withOpacity(0.1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}