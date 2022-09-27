import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher_string.dart';

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

void launchURL(String url, BuildContext context) async {
  ToastContext().init(context);
  if (await canLaunchUrlString(
    url,
  )) {
    await launchUrlString(url,
        mode: LaunchMode.inAppWebView,
        webViewConfiguration: const WebViewConfiguration(
          enableJavaScript: true,
          enableDomStorage: true,
        ));
  } else {
    Toast.show("Could not launch website.",
        textStyle: const TextStyle(color: Colors.white),
        duration: Toast.lengthShort,
        gravity: Toast.center,
        backgroundColor: Colors.white.withOpacity(0.05));
  }
}

const bodyStyle = TextStyle(fontSize: 19.0);

const pageDecoration = PageDecoration(
  imageAlignment: Alignment.center,
  bodyFlex: 2,
  imageFlex: 3,
  titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
  bodyTextStyle: bodyStyle,
  bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
  pageColor: Colors.white,
  imagePadding: EdgeInsets.zero,
);

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