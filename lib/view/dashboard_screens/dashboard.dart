import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/components/categories.dart';
import '../../utils/components/custom_bottom_navigation_bar.dart';
import '../../utils/components/custom_searchbar.dart';
import '../../utils/components/menu_adress_bar.dart';
import '../../utils/components/promotion_card.dart';
import '../../utils/components/top_restrurant.dart';
import '../../utils/components/topbar.dart';

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
