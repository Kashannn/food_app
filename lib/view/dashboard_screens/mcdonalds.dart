import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/app_constants/app_constants.dart';
import '../../utils/custom_bottom_navigation_bar.dart';

class Mcdonalds extends StatefulWidget {
  const Mcdonalds({super.key});

  @override
  State<Mcdonalds> createState() => _McdonaldsState();
}

class _McdonaldsState extends State<Mcdonalds> {
  final List<Map<String, String>> items = [
    {
      "title": "BBQ",
      "subtitle": "325ml, Price",
      "price": "\$1.50",
      "image": "assets/BBQ.png"
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
          title: Row(
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
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Mcdonaldsbackground.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          toolbarHeight: 251.h,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Mcdonalds',
                style: kStyleBlack24700,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Icon(Icons.emoji_events, color: Colors.orange),
                  SizedBox(width: 4.w),
                  Text(
                    'Top Restaurants',
                    style: kStyleBlack14400,
                  ),
                ],
              ),
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
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
