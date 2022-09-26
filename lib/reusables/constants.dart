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