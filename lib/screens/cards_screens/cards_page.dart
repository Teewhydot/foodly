import 'package:flutter/material.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/screens/cards_screens/card_type_page.dart';
import 'package:page_transition/page_transition.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: const Text(
          'Payment methods',
          style: kTitleTextStyle,
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            addVerticalSpacing(150),
            Expanded(
                child: Center(
                    child: Image.asset(Assets.imagesEmptycardslistimage))),
            Expanded(
                child: Center(child: Image.asset(Assets.imagesEmptycardtext))),
            addVerticalSpacing(30),
            LocationButton(const Text('Add credit/debit cards'), () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const CardTypePage(),
                      type: PageTransitionType.rightToLeft));
            }, kWhiteColor),
            Expanded(
                child: Container(
              height: 100,
            ))
          ],
        ),
      ),
    );
  }
}
