import 'package:flutter/material.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/screens/order_status_page.dart';
import 'package:page_transition/page_transition.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      resizeToAvoidBottomInset: false,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpacing(20),
              Text(
                'Enter your current password and new password to change your password',
                style: kDescTextStyle,
              ),
              addVerticalSpacing(20),
              const Text(
                'Current password',
              ),
              addVerticalSpacing(20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your current password',
                  hintStyle: kDescTextStyle,
                  border: InputBorder.none,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Divider(),
              ),
              addVerticalSpacing(20),
              const Text(
                'New password',
              ),
              addVerticalSpacing(20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your new password',
                  hintStyle: kDescTextStyle,
                  border: InputBorder.none,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Divider(),
              ),
              addVerticalSpacing(20),
              const Text(
                'Confirm new password',
              ),
              addVerticalSpacing(20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm your new password',
                  hintStyle: kDescTextStyle,
                  border: InputBorder.none,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Divider(),
              ),
            ],
          ),
          Column(
            children: [
              ReusableButton(const Text('Change Password'), () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: SuccessActionWidget(
                          heading: 'Password Changed Successfully',
                          subHeading: '',
                          buttonText: 'OK',
                          onpressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        type: PageTransitionType.bottomToTop));
              }, kGreenColor),
              addVerticalSpacing(20),
            ],
          ),
        ],
      ),
    );
  }
}
