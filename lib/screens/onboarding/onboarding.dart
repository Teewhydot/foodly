import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/screens/authentication/login_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    final onboardingPageHeight = MediaQuery.of(context).size.height * 0.7.h;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: onboardingPageHeight,
            child: PageView(
              controller: pageController,
              children: [
                Container(
                  color: Colors.yellowAccent,
                ),
                Container(
                  color: Colors.blueGrey,
                ),
                Container(
                  color: Colors.pink,
                ),
              ],
            ),
          ),
          Align(
              alignment: const Alignment(0, 0.35),
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: const WormEffect(),
              )),
          Align(
              alignment: const Alignment(0, 0.60),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const LoginPage(),
                            type: PageTransitionType.leftToRightPop));
                  },
                  child: const Text('Proceed'))),
        ],
      ),
    );
  }
}
