// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/providers/provider.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/screens/mainscreen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool showSpinner = false;

  void startSpinning() {
    setState(() {
      showSpinner = true;
    });
  }

  void stopSpinning() {
    setState(() {
      showSpinner = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FoodlyProvider>(context, listen: false);
    return ModalProgressHUD(
      progressIndicator: const CircularProgressIndicator(
        color: kGreenColor,
      ),
      inAsyncCall: showSpinner,
      child: Scaffold(
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
                  ), () async {
                startSpinning();
                await provider.determinePosition();
                provider.getLocationName();
                Navigator.push(
                    context,
                    PageTransition(
                        child: const MainScreen(),
                        type: PageTransitionType.rightToLeft));
                stopSpinning();
              }, kWhiteColor),
            ],
          ),
        ),
      ),
    );
  }
}
