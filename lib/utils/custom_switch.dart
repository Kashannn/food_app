import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({required this.value, required this.onChanged, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/bike.svg',
              width: 24.0,
              height: 24.0,
            ),
            SvgPicture.asset(
              'assets/person.svg',
              width: 24.0,
              height: 24.0,
            ),
          ],
        ),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.transparent,
          inactiveThumbColor: Colors.transparent,
          inactiveTrackColor: Colors.transparent,
          activeTrackColor: Colors.transparent,
        ),
      ],
    );
  }
}
