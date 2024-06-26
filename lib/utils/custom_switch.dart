import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/app_constants/images_constants.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart'; // Import the controller

class ToggleButton extends StatelessWidget {
  const ToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ToggleController controller = Get.put(ToggleController()); // Instantiate the controller

    return GestureDetector(
      onTap: () {
        controller.toggle();
      },
      child: Container(
        width: 69.w,
        height: 32.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
            width: 3.0,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Obx(() {
          return Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeIn,
                child: Container(
                  width: 34.5.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
              ),
              Positioned.fill(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: controller.isDelivery.value ? Colors.green : Colors.white,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppImages.bike,
                            color: controller.isDelivery.value ? Colors.white : Colors.green,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: controller.isDelivery.value ? Colors.white : Colors.green,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppImages.person,
                            color: controller.isDelivery.value ? Colors.green : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
