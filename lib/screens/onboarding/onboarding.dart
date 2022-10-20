import 'package:flutter/material.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/screens/authentication/login_page.dart';
import 'package:foodly/screens/onboarding/pages_model.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    allowImplicitScrolling: true,
                    physics: const BouncingScrollPhysics(),
                    pageSnapping: true,
                    key: UniqueKey(),
                    controller: pageController,
                    children: const [
                      PageModel(
                          imageAsset: Assets.imagesA3,
                          heading: "All your favourites",
                          description:
                              "Order from the best local restaurants with easy, on-demand delivery."),
                      PageModel(
                          imageAsset: Assets.imagesA1,
                          heading: "Free delivery offers",
                          description:
                              "Free delivery for new customers via Apple Pay and others payment methods."),
                      PageModel(
                          imageAsset: Assets.imagesA2,
                          heading: "Choose your food",
                          description:
                              "Easily find your type of food craving and you’ll get delivery in wide range."),
                    ],
                  ),
                ),
                Expanded(
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: const WormEffect(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ReusableButton(const Text('GET STARTED'), () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: LoginPage(),
                          type: PageTransitionType.rightToLeft));
                }, kGreenColor),
                addVerticalSpacing(10),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
