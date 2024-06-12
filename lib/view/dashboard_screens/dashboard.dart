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
    final DashboardController controller = Get.put(DashboardController());

    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    Obx(
                          () => ToggleButton (
                        // value: controller.switchValue.value,
                        // onChanged: (val) {
                        //   controller.toggleSwitch(val);
                        // },
                      ),
                    ),
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
              padding:EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                height: 202.h,
                width: 398.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: kColorGrey.withOpacity(0.1),
                ),
              ),
            ),
            21.verticalSpace,
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 21.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 35.r,
                    backgroundColor: Color(0xFFA1EEC780),
                    child: SvgPicture.asset(
                      'assets/manubar.svg',
                      width: 35.w,
                      height: 35.h,
                    ),
                  ),
                  CircleAvatar(
                    radius: 35.r,
                    backgroundColor: Color(0xFFA1EEC780),
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
                    backgroundColor: Color(0xFFA1EEC780),
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
                    backgroundColor: Color(0xFFA1EEC780),
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
                    backgroundColor: Color(0xFFA1EEC780),
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
            )





          ],
        ),
      ),
    );
  }
}