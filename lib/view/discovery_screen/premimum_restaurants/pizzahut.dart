import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/app_constants/images_constants.dart';

import '../../../app_constants/app_constants.dart';
import '../../../utils/components/custom_bottom_navigation_bar.dart';
class Pizzahut extends StatefulWidget {
  const Pizzahut({super.key});

  @override
  State<Pizzahut> createState() => _PizzahutState();
}

class _PizzahutState extends State<Pizzahut> {
  final List<Map<String, String>> items = [
    {
      "title": "BBQ",
      "subtitle": "325ml, Price",
      "price": "\$1.50",
      "image": "assets/Images/BBQ.png"
    },
    // Add more items as needed
  ];

  // Create a new list that repeats each item 5 times
  List<Map<String, String>> get repeatedItems {
    return List<Map<String, String>>.generate(
      items.length * 10,
          (index) => items[index % items.length],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back, color: Colors.green),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Container(
                    height: 45.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11.0.r),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: kStyleBlack12400,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                      ),
                      style: kStyleBlack14500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.pizzaHutBackground),
                fit: BoxFit.cover,
              ),
            ),
          ),
          toolbarHeight: 251.h,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PizzaHut',
                style: kStyleBlack24700,
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.emoji_events, color: Colors.orange),
                  SizedBox(width: 4.w),
                  Text(
                    'Top Restaurants',
                    style: kStyleBlack14400,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: ListView.builder(
                  itemCount: repeatedItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(
                        repeatedItems[index]["image"]!,
                        width: 81.w,
                        height: 51.h,
                        fit: BoxFit.cover,
                      ),
                      title: Text(repeatedItems[index]["title"]!),
                      subtitle: Text(repeatedItems[index]["subtitle"]!),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(repeatedItems[index]["price"]!),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
