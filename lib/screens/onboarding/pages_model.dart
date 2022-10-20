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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        addVerticalSpacing(20),
        SizedBox(height: 200.h, width: 200.w, child: Image.asset(imageAsset)),
        Text(heading, style: kBoldTextStyle),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            style: kDescTextStyle,
          ),
        ),
      ],
    );
  }
}
