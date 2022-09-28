import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/reusables/constants.dart';

class FeaturedPartner {
  final String image;
  final String name;
  final String location;
  final String rating;
  final String time;

  FeaturedPartner({
    required this.image,
    required this.name,
    required this.location,
    required this.rating,
    required this.time,
  });
}

class FeaturedPartnerWidget extends StatelessWidget {
  final String image;
  final String name;
  final String location;
  final String rating;
  final String time;
  final String deliveryFee;

  const FeaturedPartnerWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.location,
    required this.rating,
    required this.time,
    required this.deliveryFee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 200.w,
        height: 254.h,
        child: Column(
          children: [
            Image.asset(Assets.imagesFp),
            addVerticalSpacing(14),
            Text(name, style: kTitleTextStyle),
            addVerticalSpacing(3),
            Text(location, style: kDescTextStyle),
            addVerticalSpacing(13),
            Row(
              children: [
                Container(
                  width: 36,
                  height: 20,
                  decoration: BoxDecoration(
                    color: kGreenColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      rating,
                      style: kDescTextStyle.copyWith(
                          color: kWhiteColor, fontSize: 12.sp),
                    ),
                  ),
                ),
                addHorizontalSpacing(12),
                Text(time, style: kDescTextStyle.copyWith(fontSize: 12.sp)),
                addHorizontalSpacing(8),
                const CircleAvatar(
                  radius: 3,
                  backgroundColor: kGreenColor,
                ),
                addHorizontalSpacing(8),
                Text(deliveryFee,
                    style: kDescTextStyle.copyWith(fontSize: 12.sp)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
