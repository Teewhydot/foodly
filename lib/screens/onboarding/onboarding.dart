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
  Image? image1,
      image2,
      image3,
      image4,
      image5,
      image6,
      image7,
      image8,
      image9,
      image10,
      image11,
      image12,
      image13,
      image14,
      image15,
      image16,
      image17,
      image18,
      image19,
      image20,
      image21,
      image22,
      image23,
      image24,
      image25,
      image26,
      image27,
      image28,
      image29,
      image30,
      image31,
      image32,
      image33,
      image34,
      image35,
      image36,
      image37,
      image38,
      image39,
      image40,
      image41;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    image1 = Image.asset(
      Assets.searchImagesFilter2,
      gaplessPlayback: true,
    );
    image2 = Image.asset(
      Assets.onboardingImagesA3,
      gaplessPlayback: true,
    );
    image3 = Image.asset(
      Assets.onboardingImagesA2,
      gaplessPlayback: true,
    );
    image4 = Image.asset(
      Assets.onboardingImagesA1,
      gaplessPlayback: true,
    );
    image5 = Image.asset(
      Assets.searchImagesFilter1,
      gaplessPlayback: true,
    );
    image6 = Image.asset(
      Assets.searchImagesFilter2,
      gaplessPlayback: true,
    );
    image7 = Image.asset(
      Assets.imagesArmImage,
      gaplessPlayback: true,
    );
    image8 = Image.asset(
      Assets.imagesEmptycardslistimage,
      gaplessPlayback: true,
    );
    image9 = Image.asset(
      Assets.imagesEmptycardtext,
      gaplessPlayback: true,
    );
    image10 = Image.asset(
      Assets.imagesFaq,
      gaplessPlayback: true,
    );
    image11 = Image.asset(
      Assets.imagesFeaturedpartners,
      gaplessPlayback: true,
    );
    image12 = Image.asset(
      Assets.imagesFeaturedpartners1,
      gaplessPlayback: true,
    );
    image13 = Image.asset(
      Assets.imagesFp,
      gaplessPlayback: true,
    );
    image14 = Image.asset(
      Assets.imagesHA,
      gaplessPlayback: true,
    );
    image15 = Image.asset(
      Assets.imagesHI,
      gaplessPlayback: true,
    );
    image16 = Image.asset(
      Assets.imagesLogobgremoved,
      gaplessPlayback: true,
    );
    image17 = Image.asset(
      Assets.imagesMastercard,
      gaplessPlayback: true,
    );
    image18 = Image.asset(
      Assets.imagesOA,
      gaplessPlayback: true,
    );
    image19 = Image.asset(
      Assets.imagesOI,
      gaplessPlayback: true,
    );
    image20 = Image.asset(
      Assets.imagesPA,
      gaplessPlayback: true,
    );
    image21 = Image.asset(
      Assets.imagesPaypal,
      gaplessPlayback: true,
    );
    image22 = Image.asset(
      Assets.imagesPI,
      gaplessPlayback: true,
    );
    image23 = Image.asset(
      Assets.imagesPromo,
      gaplessPlayback: true,
    );
    image24 = Image.asset(
      Assets.imagesSA,
      gaplessPlayback: true,
    );
    image25 = Image.asset(
      Assets.imagesSI,
      gaplessPlayback: true,
    );
    image26 = Image.asset(
      Assets.imagesTime,
      gaplessPlayback: true,
    );
    image27 = Image.asset(
      Assets.imagesTimer,
      gaplessPlayback: true,
    );
    image28 = Image.asset(
      Assets.imagesVisa,
      gaplessPlayback: true,
    );
    image29 = Image.asset(
      Assets.searchImagesFilter4,
      gaplessPlayback: true,
    );
    image30 = Image.asset(
      Assets.searchImagesFilter3,
      gaplessPlayback: true,
    );
    image31 = Image.asset(
      Assets.searchImagesFilterblack1,
      gaplessPlayback: true,
    );
    image32 = Image.asset(
      Assets.searchImagesFilterblack2,
      gaplessPlayback: true,
    );
    image33 = Image.asset(
      Assets.searchImagesFilterblack3,
      gaplessPlayback: true,
    );
    image34 = Image.asset(
      Assets.searchImagesFilterblack4,
      gaplessPlayback: true,
    );
    image35 = Image.asset(
      Assets.searchImagesFilterblack5,
      gaplessPlayback: true,
    );
    image36 = Image.asset(
      Assets.searchImagesFilterblack6,
      gaplessPlayback: true,
    );
    image37 = Image.asset(
      Assets.searchImagesFilterblack7,
      gaplessPlayback: true,
    );
    image38 = Image.asset(
      Assets.searchResultsSearchresultb1,
      gaplessPlayback: true,
    );
    image39 = Image.asset(
      Assets.searchResultsSearchresultb2,
      gaplessPlayback: true,
    );
    image40 = Image.asset(
      Assets.searchResultsSearchresults1,
      gaplessPlayback: true,
    );
    image41 = Image.asset(
      Assets.searchResultsSearchresults2,
      gaplessPlayback: true,
    );
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    precacheImage(image1!.image, context);
    precacheImage(image2!.image, context);
    precacheImage(image3!.image, context);
    precacheImage(image4!.image, context);
    precacheImage(image5!.image, context);
    precacheImage(image6!.image, context);
    precacheImage(image7!.image, context);
    precacheImage(image8!.image, context);
    precacheImage(image9!.image, context);
    precacheImage(image10!.image, context);
    precacheImage(image11!.image, context);
    precacheImage(image12!.image, context);
    precacheImage(image13!.image, context);
    precacheImage(image14!.image, context);
    precacheImage(image15!.image, context);
    precacheImage(image16!.image, context);
    precacheImage(image17!.image, context);
    precacheImage(image18!.image, context);
    precacheImage(image19!.image, context);
    precacheImage(image20!.image, context);
    precacheImage(image21!.image, context);
    precacheImage(image22!.image, context);
    precacheImage(image23!.image, context);
    precacheImage(image24!.image, context);
    precacheImage(image25!.image, context);
    precacheImage(image26!.image, context);
    precacheImage(image27!.image, context);
    precacheImage(image28!.image, context);
    precacheImage(image29!.image, context);
    precacheImage(image30!.image, context);
    precacheImage(image31!.image, context);
    precacheImage(image32!.image, context);
    precacheImage(image33!.image, context);
    precacheImage(image34!.image, context);
    precacheImage(image35!.image, context);
    precacheImage(image36!.image, context);
    precacheImage(image37!.image, context);
    precacheImage(image38!.image, context);
    precacheImage(image39!.image, context);
    precacheImage(image40!.image, context);
    precacheImage(image41!.image, context);
  }

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
                          imageAsset: Assets.onboardingImagesA3,
                          heading: "All your favourites",
                          description:
                              "Order from the best local restaurants with easy, on-demand delivery."),
                      PageModel(
                          imageAsset: Assets.onboardingImagesA1,
                          heading: "Free delivery offers",
                          description:
                              "Free delivery for new customers via Apple Pay and others payment methods."),
                      PageModel(
                          imageAsset: Assets.onboardingImagesA2,
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
                          child: const LoginPage(),
                          type: PageTransitionType.rightToLeft));
                }, kGreenColor),
                addVerticalSpacing(90),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
