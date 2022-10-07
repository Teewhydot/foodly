// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/screens/bottom_navigation_pages/search.dart';
import 'package:page_transition/page_transition.dart';

class FilterType {
  final image;
  final text;
  final count;

  FilterType({required this.image, required this.text, required this.count});
}

class FilterTypeWidget extends StatelessWidget {
  final image;
  final name;
  final count;

  const FilterTypeWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: const SearchFood(),
                type: PageTransitionType.rightToLeft));
      },
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                        fit: BoxFit.fill)),
                height: 184.h,
                width: 164.w,
              ),
            ),
          ),
          Expanded(flex: 1, child: Text('$name($count)'))
        ],
      ),
    );
  }
}

class FilterTypeWidgetClone extends StatelessWidget {
  final image;

  const FilterTypeWidgetClone({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                        fit: BoxFit.fill)),
                height: 184.h,
                width: 164.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
