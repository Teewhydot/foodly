import 'package:flutter/material.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/custom_listtile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            addVerticalSpacing(30),
            const Text(
              'Account settings',
              style: kBoldTextStyle,
            ),
            addVerticalSpacing(20),
            Text(
              'Update your settings like notifications, payments, profile edit etc.',
              style: kDescTextStyle,
            ),
            addVerticalSpacing(10),
            CustomListTile(
                leading: const Icon(Icons.person),
                heading: const Text('Profile information'),
                subHeading: const Text('Change your account information'),
                onTap: () {}),
            CustomListTile(
                leading: const Icon(Icons.lock),
                heading: const Text('Change password'),
                subHeading: const Text('Change your account password'),
                onTap: () {}),
            CustomListTile(
                leading: const Icon(Icons.credit_card),
                heading: const Text('Payment methods'),
                subHeading: const Text('Add your credit or debit cards'),
                onTap: () {}),
            CustomListTile(
                leading: const Icon(Icons.location_on),
                heading: const Text('Locations'),
                subHeading: const Text('Add or remove delivery locations'),
                onTap: () {}),
            CustomListTile(
                leading: const Icon(Icons.facebook),
                heading: const Text('Add social media accounts'),
                subHeading:
                    const Text('Connect your facebook, twitter , github etc'),
                onTap: () {}),
            addVerticalSpacing(30),
            Text('Notifications'),
            addVerticalSpacing(20),
            CustomListTileWithSwitch(
                heading: Text('Push Notifications'),
                subHeading: Text('For daily updates'),
                onTap: () {}),
            CustomListTileWithSwitch(
                heading: Text('SMS Notifications'),
                subHeading: Text('For daily updates'),
                onTap: () {}),
            CustomListTileWithSwitch(
                heading: Text('Promotional Notifications'),
                subHeading: Text('For daily updates'),
                onTap: () {}),
            addVerticalSpacing(30),
            Text('More'),
            addVerticalSpacing(20),
            CustomListTile(
                leading: const Icon(Icons.star),
                heading: const Text('Rate us'),
                subHeading: const Text('Rate our app on Playstore or appstore'),
                onTap: () {}),
            CustomListTile(
                leading: Image.asset(
                  Assets.imagesFaq,
                  height: 24,
                  width: 24,
                ),
                heading: const Text('FAQ'),
                subHeading: const Text('Frequently asked questions'),
                onTap: () {}),
            CustomListTile(
                leading: const Icon(Icons.logout),
                heading: const Text('Log Out'),
                subHeading: const Text(''),
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
