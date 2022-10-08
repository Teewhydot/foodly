import 'package:flutter/material.dart';
import 'package:foodly/reusables/constants.dart';

class ProfileInfoPage extends StatelessWidget {
  const ProfileInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: const Text(
          'Profile information',
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
      backgroundColor: kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerticalSpacing(20),
            const Text('Full Name'),
            addVerticalSpacing(20),
            const Text('Abubakar Issa'),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(),
            ),
            addVerticalSpacing(20),
            const Text('Email'),
            addVerticalSpacing(20),
            const Text('abubakarissa@gmail.com'),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(),
            ),
            addVerticalSpacing(20),
            const Text('Phone Number'),
            addVerticalSpacing(20),
            const Text('+234 812 345 6789'),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
