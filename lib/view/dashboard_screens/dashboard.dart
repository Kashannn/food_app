import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/categories.dart';
import '../../utils/custom_bottom_navigation_bar.dart';
import '../../utils/custom_searchbar.dart';
import '../../utils/menu_adress_bar.dart';
import '../../utils/promotion_card.dart';
import '../../utils/top_restrurant.dart';
import '../../utils/topbar.dart';

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
              TopBar(),
              11.verticalSpace,
              MenuAddressToggleRow(),
              20.verticalSpace,
              CustomSearchBar(),
              17.verticalSpace,
              PromotionCard(),
              21.verticalSpace,
              Categories(),
              15.verticalSpace,
              TopRestaurantSection(),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
