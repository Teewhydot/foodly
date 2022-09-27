import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/reusables/constants.dart';

class PageModel extends StatelessWidget {
  final String imageAsset;
  final heading;
  final description;

  const PageModel(
      {super.key,
      required this.imageAsset,
      required this.heading,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        addVerticalSpacing(20),
        SizedBox(height: 383.h, width: 376.w, child: Image.asset(imageAsset)),
        addVerticalSpacing(30),
        Text(heading,style: kBoldTextStyle),
        addVerticalSpacing(20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(description,style: kDescTextStyle,),
        ),
        addVerticalSpacing(10),
      ],
    );
  }
}
