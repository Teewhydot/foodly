import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/reusables/constants.dart';

class PageModel extends StatelessWidget {
  final String imageAsset;
  final String heading;
  final String description;

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
        SizedBox(height: 383.h, width: 376.w, child: Image.asset(imageAsset)),
        addVerticalSpacing(70),
        Text(heading,style: kBoldTextStyle),
        addVerticalSpacing(10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(description,style: kDescTextStyle,),
        ),
        addVerticalSpacing(10),
      ],
    );
  }
}
