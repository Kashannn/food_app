import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/app_constants/app_constants.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/egg.png'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Katty Berry',
                        style:kStyleBlack20600,
                      ),
                      Text(
                        'kattyberry@gmail.com',
                        style: kStyleBlack14400,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text('My Orders', style: kStyleBlack16400),
                onTap: () {
                  // Navigate to My Orders screen
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('My Information', style: kStyleBlack16400),
                onTap: () {
                  // Navigate to My Information screen
                },
              ),
              ListTile(
                leading: Icon(Icons.wallet_travel),
                title: Text('Fdovo', style: kStyleBlack16400),
                onTap: () {
                  // Navigate to Fdovo screen
                },
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notification', style: kStyleBlack16400),
                onTap: () {
                  // Navigate to Notification screen
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete my Account', style: kStyleBlack16400),
                onTap: () {
                  // Perform delete account action
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help & FAQ', style: kStyleBlack16400),
                onTap: () {
                  // Navigate to Help & FAQ screen
                },
              ),
              Spacer(),
              TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: kColorLightPrimary2, backgroundColor:   kColorWhite,
                  minimumSize: Size(64.w, 21.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    side: BorderSide(color: kColorLightPrimary2, width: 2),
                  ),
                ),
                icon: Icon(Icons.logout, color:kColorLightPrimary2),
                label: Text('Log out', style: TextStyle(color: kColorLightPrimary2)),
                onPressed: () {
                  // Perform logout action
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
