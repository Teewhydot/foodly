// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/models/featured_partners.dart';
import 'package:foodly/reusables/constants.dart';

class FeaturedPartnersPrime extends FeaturedPartner {
  final deliveryFee;
  final width;
  final height;

  FeaturedPartnersPrime(
      {required super.image,
      required super.name,
      required super.location,
      required super.rating,
      required super.time,
      required this.deliveryFee,
      required this.height,
      required this.width});
}

class FeaturesPartnersPrimeWidget extends StatelessWidget {
  final String name;
  final String location;
  final String rating;
  final int numberOfRatings;
  final String time;
  final List<String> foodType;
  final String deliveryFee;
  final String image;
  final double width;
  final double height;

  const FeaturesPartnersPrimeWidget({
    super.key,
    required this.width,
    required this.height,
    required this.name,
    required this.foodType,
    required this.location,
    required this.rating,
    required this.numberOfRatings,
    required this.time,
    required this.deliveryFee,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.fill)),
            height: height.h,
            width: width.w,
          ),
          addVerticalSpacing(16),
          Text(name, style: kTitleTextStyle),
          addVerticalSpacing(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < foodType.length; i++)
                Text("${foodType[i]}, ", style: kDescTextStyle),
            ],
          ),
          addVerticalSpacing(9),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                    rating.toString(),
                    style: kDescTextStyle.copyWith(
                        color: kWhiteColor, fontSize: 12.sp),
                  ),
                ),
              ),
              addHorizontalSpacing(8),
              Image.asset(Assets.imagesTimer),
              addHorizontalSpacing(3),
              Text(
                time,
                style: kDescTextStyle,
              ),
              addHorizontalSpacing(8),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: kGreenColor,
                  ),
                  Text(
                    "${numberOfRatings.toString()}+ ratings",
                    style: kDescTextStyle,
                  ),
                ],
              ),
              Divider(),
              addVerticalSpacing(10),
            ],
          ),
        ],
      ),
    );
  }
}
