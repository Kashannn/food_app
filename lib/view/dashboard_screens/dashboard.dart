import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../controllers/dashboard_controller.dart';
import 'package:food_app/app_constants/app_constants.dart';
import '../../utils/custom_switch.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    print('Dashboard');
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 31.h, left: 102.w, right: 80.w),
                child: Container(
                  height: 36.h,
                  width: 219.w,
                  decoration: BoxDecoration(
                    color: kColorBlack,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 3.w),
                    child: Text(
                      'Get Your First delivery free 🔥',
                      style: kStyleWhite12500,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              11.verticalSpace,
              Padding(
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
                        backgroundColor: Color(0xFF2CC879),
                        child: SvgPicture.asset(
                          'assets/menu.svg',
                          width: 20.w,
                          height: 20.h,
                        ),
                      ),
                      Text(
                        'Menu',
                        style: kStyleBlack14500,
                      ),
                      Text(
                        'Jl. Soekarno Hatta 15A',
                        style: kStyleBlack14300,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF2CC879),
                      ),
                      ToggleButton(),
                    ],
                  ),
                ),
              ),
              20.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: TextField(
                  style: kStyleBlack14500,
                  decoration: InputDecoration(
                    hintText: 'Search for food',
                    hintStyle: kStyleBlack14500.copyWith(color: kColorGrey),
                    prefixIcon: Icon(
                      Icons.search,
                      color: kColorGrey,
                    ),
                    filled: true,
                    fillColor: kColorGrey.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              17.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Container(
                  height: 202.h,
                  width: 398.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: kColorLightPrimary2,
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: Opacity(
                            opacity: 0.3, // Adjust the opacity as needed
                            child: Image.asset(
                              'assets/background.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10.h,
                        right: 0.w,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(
                            'assets/handfood.png',
                            width: 153.w,
                            height: 200.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              21.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 35.r,
                      backgroundColor: kColorLightPrimary.withOpacity(0.5),
                      child: SvgPicture.asset(
                        'assets/manubar.svg',
                        width: 35.w,
                        height: 35.h,
                      ),
                    ),
                    CircleAvatar(
                      radius: 35.r,
                      backgroundColor: kColorLightPrimary.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/american.svg',
                            width: 35.w,
                            height: 35.h,
                          ),
                          Text(
                            'American',
                            style: kStyleBlack8500,
                          )
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 35.r,
                      backgroundColor: kColorLightPrimary.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/burgers.svg',
                            width: 35.w,
                            height: 35.h,
                          ),
                          Text(
                            'Burgers',
                            style: kStyleBlack8500,
                          )
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 35.r,
                      backgroundColor: kColorLightPrimary.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/breakfast.svg',
                            width: 35.w,
                            height: 35.h,
                          ),
                          Text(
                            'BreakFast',
                            style: kStyleBlack8500,
                          )
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 35.r,
                      backgroundColor: kColorLightPrimary.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/american.svg',
                            width: 35.w,
                            height: 35.h,
                          ),
                          Text(
                            'American',
                            style: kStyleBlack8500,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              24.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Container(
                  height: 822.h,
                  width: 401.w,
                  decoration: BoxDecoration(
                    color: kColorGrey.withOpacity(0.1),
                  ),
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
                              ),
                              onPressed: () {},
                              child: Text('See all', style: kStyleBlack12400)),
                        ],
                      ),
                      16.verticalSpace,
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 122.h,
                                width: 271.w,
                                decoration: BoxDecoration(
                                  color: kColorGrey.withOpacity(0.1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.r),
                                    topRight: Radius.circular(8.r),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 122.h,
                                      width: 271.w,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/fooddashboard.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.r),
                                          topRight: Radius.circular(8.r),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 70.h,
                                      right: 0,
                                      child: Container(
                                        height: 26.h,
                                        width: 115.w,
                                        decoration: BoxDecoration(
                                          color: kColorLightPrimary2,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8.r),
                                            bottomLeft: Radius.circular(8.r),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('€3.00 off delivery',
                                                style: kStyleWhite10400),
                                            SvgPicture.asset(
                                              'assets/officon.svg',
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 87.h,
                                width: 271.w,
                                decoration: BoxDecoration(
                                  color: kColorGrey.withOpacity(0.1),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.r),
                                    bottomRight: Radius.circular(8.r),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text('Crazy tacko',
                                        style: kStyleBlackRubik18500),
                                    Text(
                                        'Delicouse tackos, appetizing snacks, fr...',
                                        style: kStyleBlack12400),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/truck.svg',
                                        ),
                                        Text('€3,00', style: kStyleBlack12400),
                                        SvgPicture.asset(
                                          'assets/clock.svg',
                                        ),
                                        Text('40-50min',
                                            style: kStyleBlack12400),
                                        SvgPicture.asset(
                                          'assets/star.svg',
                                        ),
                                        Text('9,5', style: kStyleBlack12400),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              40.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
