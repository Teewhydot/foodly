import 'package:flutter/material.dart';
import 'package:foodly/reusables/constants.dart';

class AddCardDetails extends StatelessWidget {
  const AddCardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: const Text(
          '',
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
      body: Column(
        children: [
          Text(
            'Add card details',
            style: kBoldTextStyle,
          ),
          addVerticalSpacing(20),
          Text(
            'This card will only be charged when you place an order.',
            style: kDescTextStyle,
          ),
        ],
      ),
    );
  }
}
