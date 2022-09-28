import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/custom_text_field.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/screens/authentication/forgot_pasword.dart';
import 'package:foodly/screens/authentication/signup_page.dart';
import 'package:foodly/screens/location_screen.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: const Text(
          'Sign In',
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
        padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerticalSpacing(24),
            const Text(
              'Welcome Back',
              style: kTitleTextStyle,
            ),
            addVerticalSpacing(20),
            RichText(
                text: TextSpan(
              text: 'Enter your Phone number or Email for sign in, Or ',
              style: kDescTextStyle,
              children: [
                TextSpan(
                  text: ' Create account',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const SignUpPage(),
                              type: PageTransitionType.rightToLeft));
                    },
                  style: kTitleTextStyle.copyWith(
                    color: kGreenColor,
                  ),
                ),
              ],
            )),
            addVerticalSpacing(34),
            Column(
              children: [
                CustomTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  suffixIcon: Icons.email,
                ),
                addVerticalSpacing(14),
                CustomTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  suffixIcon: Icons.lock,
                ),
                addVerticalSpacing(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: const ForgotPasswordPage(),
                                type: PageTransitionType.rightToLeft));
                      },
                      child: Text(
                        'Forgot Password?',
                        style: kDescTextStyle.copyWith(
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                ReusableButton(const Text('SIGN IN'), () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Location(),
                          type: PageTransitionType.rightToLeft));
                }, kGreenColor),
                addVerticalSpacing(20),
                Text(
                  'Or',
                  style: kDescTextStyle,
                ),
                addVerticalSpacing(20),
                Column(
                  children: [
                    ReusableButton(
                        Row(children: [
                          const Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ),
                          addHorizontalSpacing(30),
                          const Center(child: Text('CONNECT WITH FACEBOOK'))
                        ]),
                        () {},
                        kDeepBlueColor),
                    addVerticalSpacing(20),
                    ReusableButton(
                        Row(children: [
                          const Icon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),
                          addHorizontalSpacing(30),
                          const Center(child: Text('CONNECT WITH GOOGLE'))
                        ]),
                        () {},
                        kBlueColor),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
