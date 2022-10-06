import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.fill)),
            height: 124.h,
            width: 100.w,
          ),
          Text('$name($count)')
        ],
      ),
    );
  }
}
