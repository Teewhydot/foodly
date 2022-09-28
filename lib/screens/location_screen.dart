import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/screens/home.dart';
import 'package:page_transition/page_transition.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhiteColor,
        centerTitle: true,
        title: const Text(
          'Set Location',
          style: kBlackText,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kBlackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w),
        child: Column(
          children: [
            addVerticalSpacing(24),
            const Text(
              'Find restaurants near you',
              style: kTitleTextStyle,
            ),
            addVerticalSpacing(20),
            Text(
              'Please enter your location or allow access to your location to find restaurants near you.',
              style: kDescTextStyle,
            ),
            addVerticalSpacing(34),
            LocationButton(
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      FontAwesomeIcons.locationArrow,
                      color: kGreenColor,
                    ),
                    addHorizontalSpacing(10),
                    const Text(
                      'Use current location',
                      style: kGreenText,
                    ),
                  ],
                ), () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const MainScreen(),
                      type: PageTransitionType.rightToLeft));
            }, kWhiteColor),
          ],
        ),
      ),
    );
  }
}
