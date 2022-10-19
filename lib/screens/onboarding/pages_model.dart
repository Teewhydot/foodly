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
              Expanded(
                flex: 4,
                child: SizedBox(
                    height: 300.h,
                    width: 300.w,
                    child: Image.asset(imageAsset)),
              ),
              Expanded(child: Text(heading, style: kBoldTextStyle)),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    description,
                    style: kDescTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
