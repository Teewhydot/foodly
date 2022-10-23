import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';

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
const whiteText = TextStyle(
  color: kWhiteColor,
  fontSize: 20,
);

const loadingIndicator = LoadingIndicator(
    indicatorType: Indicator.ballPulse,

    /// Required, The loading type of the widget
    colors: [Colors.green],

    /// Optional, The color collections
    strokeWidth: 2,

    /// Optional, The stroke of the line, only applicable to widget which contains line
    backgroundColor: Colors.transparent,

    /// Optional, Background of the widget
    pathBackgroundColor: Colors.transparent

    /// Optional, the stroke backgroundColor
    );