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
        Expanded(
          flex: 3,
          child: Column(
            children: [
              addVerticalSpacing(40),
              SizedBox(
                  height: 350.h, width: 350.w, child: Image.asset(imageAsset)),
              addVerticalSpacing(10),
              Text(heading, style: kBoldTextStyle),
              addVerticalSpacing(10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
                  style: kDescTextStyle,
                ),
              ),
            ],
          ),
        ),
        Expanded(flex: 1, child: Column())
      ],
    );
  }
}
