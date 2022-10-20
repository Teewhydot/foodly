import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final onboardingPageHeight = MediaQuery.of(context).size.height * 0.5.h;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),

          // PageView(
          //   pageSnapping: true,
          //   key: UniqueKey(),
          //   controller: pageController,
          //   children: [
          //     MeasureSize(
          //       onChange: (size) {
          //         var myChildSize = Size.zero;
          //         setState(() {
          //           myChildSize = size;
          //         });
          //         print(myChildSize);
          //       },
          //       child: PageModel(
          //           imageAsset: Assets.imagesA3,
          //           heading: "All your favourites",
          //           description:
          //               "Order from the best local restaurants with easy, on-demand delivery."),
          //     ),
          //     PageModel(
          //         imageAsset: Assets.imagesA1,
          //         heading: "Free delivery offers",
          //         description:
          //             "Free delivery for new customers via Apple Pay and others payment methods."),
          //     PageModel(
          //         imageAsset: Assets.imagesA2,
          //         heading: "Choose your food",
          //         description:
          //             "Easily find your type of food craving and you’ll get delivery in wide range."),
          //   ],
          // ),
          // SmoothPageIndicator(
          //   controller: pageController,
          //   count: 3,
          //   effect: const WormEffect(),
          // ),
          // addVerticalSpacing(10),
          // ReusableButton(const Text('GET STARTED'), () {
          //   Navigator.push(
          //       context,
          //       PageTransition(
          //           child: LoginPage(), type: PageTransitionType.rightToLeft));
          // }, kGreenColor),
        ],
      ),
    );
  }
}
