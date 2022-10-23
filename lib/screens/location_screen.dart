// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/providers/provider.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/screens/mainscreen.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  final TextEditingController addressController = TextEditingController();
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
    bool hasInternet;
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
                hasInternet = await InternetConnectionChecker().hasConnection;

                if (hasInternet) {
                  startSpinning();
                  await provider.determinePosition();
                  await provider.getLocationName();
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const MainScreen(),
                          type: PageTransitionType.rightToLeft));
                  stopSpinning();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('No internet connection'),
                  ));
                }
              }, kWhiteColor),
              addVerticalSpacing(50),
              Text(
                  'Note: If your current location does not have a designated latitude and longitude values, the loading screen will not stop, In that case enter your address manually below.',
                  style: kDescTextStyle),
              addVerticalSpacing(20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.r))),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: addressController,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.streetAddress,
                  onChanged: (newValue) {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: textFieldFillColor,
                    focusColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: kGreenColor,
                          width: 3,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
                          color: kGreenColor.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    hintText: 'Enter address manually',
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 5.0.h, horizontal: 20.0.w),
                  ),
                ),
              ),
              addVerticalSpacing(20),
              LocationButton(
                  const Text(
                    'Set Location',
                    style: whiteText,
                  ), () async {
                hasInternet = await InternetConnectionChecker().hasConnection;
                if (hasInternet) {
                  startSpinning();
                  provider.setLocation(addressController.text);
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const MainScreen(),
                          type: PageTransitionType.rightToLeft));
                  stopSpinning();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('No internet connection'),
                  ));
                }
              }, kGreenColor),
            ],
          ),
        ),
      ),
    );
  }
}
