import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/screens/mainscreen.dart';
import 'package:page_transition/page_transition.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent.withOpacity(0.5),
      body: Align(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    addVerticalSpacing(30),
                    Flexible(
                        child: Center(
                      child: Text(
                        'You placed the order Successfully',
                        style: kBoldTextStyle.copyWith(fontSize: 25),
                      ),
                    )),
                    addVerticalSpacing(10),
                    Flexible(
                        child: Center(
                      child: Text(
                        'You will get your food within 25minutes. Thanks for using our services and please enjoy your Foodly :)',
                        style: kDescTextStyle,
                      ),
                    )),
                    addVerticalSpacing(10),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    child: const MainScreen(),
                                    type: PageTransitionType.rightToLeft));
                          },
                          child: Text(
                            'KEEP EXPLORING',
                            style: kBlackText.copyWith(color: kGreenColor),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
                left: 100,
                bottom: 260,
                child: Icon(
                  FontAwesomeIcons.heartCircleCheck,
                  color: kGreenColor,
                  size: 90,
                )),
          ],
        ),
      ),
    );
  }
}

class PaymentFailed extends StatelessWidget {
  const PaymentFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent.withOpacity(0.5),
      body: Align(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    addVerticalSpacing(30),
                    Flexible(
                        child: Center(
                      child: Text(
                        'Your order was not successful',
                        style: kBoldTextStyle.copyWith(fontSize: 25),
                      ),
                    )),
                    addVerticalSpacing(10),
                    Flexible(
                        child: Center(
                      child: Text(
                        'Your payment has not been received on our end and we cannot process your order kindly retry action',
                        style: kDescTextStyle,
                      ),
                    )),
                    addVerticalSpacing(10),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    child: const MainScreen(),
                                    type: PageTransitionType.rightToLeft));
                          },
                          child: Text(
                            'KEEP EXPLORING',
                            style: kBlackText.copyWith(color: kGreenColor),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
                left: 100,
                bottom: 260,
                child: Icon(
                  FontAwesomeIcons.solidFaceFrownOpen,
                  color: Colors.yellowAccent,
                  size: 90,
                )),
          ],
        ),
      ),
    );
  }
}
