import 'package:flutter/material.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/providers/provider.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/custom_listtile.dart';
import 'package:foodly/screens/add_social_media_screen.dart';
import 'package:foodly/screens/authentication/login_page.dart';
import 'package:foodly/screens/cards_screens/cards_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'change_password.dart';
import 'profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
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
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const ProfileInfoPage(),
                          type: PageTransitionType.rightToLeft));
                }),
            CustomListTile(
                leading: const Icon(Icons.lock),
                heading: const Text('Change password'),
                subHeading: const Text('Change your account password'),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const ChangePasswordPage(),
                          type: PageTransitionType.rightToLeft));
                }),
            CustomListTile(
                leading: const Icon(Icons.credit_card),
                heading: const Text('Payment methods'),
                subHeading: const Text('Add your credit or debit cards'),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const CardsPage(),
                          type: PageTransitionType.rightToLeft));
                }),
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
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const AddSocialMedia(),
                          type: PageTransitionType.rightToLeft));
                }),
            addVerticalSpacing(30),
            const Text('Notifications'),
            addVerticalSpacing(20),
            CustomListTileWithSwitch(
                heading: const Text('Push Notifications'),
                subHeading: const Text('For daily updates'),
                onTap: () {}),
            CustomListTileWithSwitch(
                heading: const Text('SMS Notifications'),
                subHeading: const Text('For daily updates'),
                onTap: () {}),
            CustomListTileWithSwitch(
                heading: const Text('Promotional Notifications'),
                subHeading: const Text('For daily updates'),
                onTap: () {}),
            addVerticalSpacing(30),
            const Text('More'),
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
                onTap: () async {
                  await provider.logOut();
                  Navigator.pushReplacement(
                      (context),
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                }),
          ],
        ),
      ),
    );
  }
}
