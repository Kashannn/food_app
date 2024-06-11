import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_constants/app_constants.dart';

class CustomLabeledTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool passwordfield;
  final TextStyle labelStyle;
  final TextStyle hintTextStyle;
  final String? startIcon;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;

  const CustomLabeledTextField({
    Key? key,
    required this.controller,
    required this.passwordfield,
    required this.labelStyle,
    required this.hintTextStyle,
    required this.hintText,
    required this.focusNode,
    this.nextFocusNode,
    this.startIcon,
  }) : super(key: key);

  @override
  State<CustomLabeledTextField> createState() => _CustomLabeledTextFieldState();
}

class _CustomLabeledTextFieldState extends State<CustomLabeledTextField> {
  bool passwordVisible = true;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onFocusChange);
    widget.focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = widget.focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.passwordfield
        ? Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 345.w,
          height: 60.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            border: Border.all(
              color: _isFocused ? kColorPrimary : Colors.transparent,
            ),
            color: kColorPrimary2,
            borderRadius: BorderRadius.circular(48.r),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: widget.controller,
                  focusNode: widget.focusNode,
                  style: widget.hintTextStyle,
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    hintStyle: widget.hintTextStyle,
                    hintText: widget.hintText,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 18.h),
                  ),
                  onFieldSubmitted: (value) {
                    if (widget.nextFocusNode != null) {
                      FocusScope.of(context).requestFocus(widget.nextFocusNode);
                    }
                  },
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(passwordVisible
                    ? Icons.visibility_off_outlined
                    : Icons.visibility),
                color: kColorGrey124,
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    )
        : Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 351.w,
          height: 54.h,
          padding: EdgeInsets.symmetric(
              horizontal: widget.startIcon != null ? 1.w : 20.w),
          decoration: BoxDecoration(
            border: Border.all(
              color: _isFocused ? kColorPrimary : Colors.transparent,
            ),
            color: kColorPrimary2,
            borderRadius: BorderRadius.circular(48.r),
          ),
          child: Row(
            children: [
              if (widget.startIcon != null)
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Image.asset(
                    widget.startIcon!,
                    color: kColorBlack,
                    width: 17.w,
                    height: 17.h,
                  ),
                  onPressed: () {},
                ),
              Expanded(
                child: TextFormField(
                  controller: widget.controller,
                  focusNode: widget.focusNode,
                  style: widget.hintTextStyle,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: widget.hintTextStyle,
                    contentPadding: EdgeInsets.symmetric(vertical: 18.h),
                    border: InputBorder.none,
                  ),
                  onFieldSubmitted: (value) {
                    if (widget.nextFocusNode != null) {
                      FocusScope.of(context).requestFocus(widget.nextFocusNode);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
