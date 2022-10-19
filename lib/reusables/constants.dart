import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final scaffoldSpacing = addVerticalSpacing(40);

Widget addVerticalSpacing(double height) {
  return SizedBox(
    height: height.h,
  );
}

Widget addHorizontalSpacing(double width) {
  return SizedBox(
    width: width.w,
  );
}


const bodyStyle = TextStyle(fontSize: 19.0);

const kGreenColor = Color(0xff22a45d);
const kBlackColor = Color(0xff010f07);
const kGreyColor = Color(0xff868686);
const kWhiteColor = Color(0xffffffff);
const kBlueColor = Color(0xff4285f4);
const kDeepBlueColor = Color(0xff395998);
const kCopperColor = Color(0xffef9920);
const kBoldTextStyle = TextStyle(
  color: kBlackColor,
  fontWeight: FontWeight.w900,
  fontSize: 30,
);
final kDescTextStyle = TextStyle(
  color: kBlackColor.withOpacity(0.5),
  fontSize: 20,
);
const kTitleTextStyle = TextStyle(
  color: kBlackColor,
  fontWeight: FontWeight.w900,
  fontSize: 20,
);
const textFieldFillColor = Color(0xffF3F2F2);
const kBlackText = TextStyle(
  color: kBlackColor,
  fontSize: 20,
);
const kGreenText = TextStyle(
  color: kGreenColor,
  fontSize: 20,
);