import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/reusables/constants.dart';

class CustomTextField extends StatelessWidget {
  final controller;
  final String? hintText;
  final suffixIcon;

  const CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.suffixIcon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.r))),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              cursorColor: Colors.black,
              keyboardType: TextInputType.emailAddress,
              onChanged: (newValue) {},
              decoration: InputDecoration(
                filled: true,
                fillColor: textFieldFillColor,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: kGreenColor, width: 3, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: GestureDetector(
                      onTap: () async {}, child: Icon(suffixIcon)),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.solid,
                      color: kGreenColor.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                hintText: hintText,
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 20.0.w),
              ),
            ),
          ),
          addHorizontalSpacing(10),
        ],
      ),
    );
  }
}
