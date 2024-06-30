import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/dashboard_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final BottomNavController bottomNavController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.r),
        topRight: Radius.circular(30.r),
      ),
      child: SizedBox(
        height: 125.h,
        child: Obx(() {
          return FloatingNavbar(
            onTap: (int val) {
              bottomNavController.changeIndex(val);
            },
            currentIndex: bottomNavController.currentIndex.value,
            items: [
              FloatingNavbarItem(icon: Icons.home, title: 'Home'),
              FloatingNavbarItem(icon: Icons.favorite, title: 'Favorites'),
              FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
              FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
            ],
          );
        }),
      ),
    );
  }
}
