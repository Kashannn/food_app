import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isDelivery = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isDelivery = !isDelivery;
        });
      },
      child: Container(
        width: 69.w,
        height: 32.h,
        decoration: BoxDecoration(
          border: Border.all(
            color:Colors.green,
            width: 3.0,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeIn,
              left: isDelivery ? 0 : 34.5.w,
              right: isDelivery ? 34.5.w : 0,
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
                        color: isDelivery ? Colors.green : Colors.white,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/bike.svg',
                          color:
                          isDelivery ? Colors.white : Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: isDelivery ? Colors.white : Colors.green,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/person.svg',
                          color:
                          isDelivery ? Colors.green : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}