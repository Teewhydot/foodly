import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/custom_text_field.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/screens/authentication/forgot_pasword.dart';
import 'package:foodly/screens/authentication/login_page.dart';
import 'package:page_transition/page_transition.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController fullNameController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: const Text(
          'Sign Up',
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
              'Create account',
              style: kTitleTextStyle,
            ),
            addVerticalSpacing(20),
            RichText(
                text: TextSpan(
              text: 'Enter your Name, Email and Password to sign up.',
              style: kDescTextStyle,
              children: [
                TextSpan(
                  text: ' Already have an account?',
                  style: kDescTextStyle,
                  children: [
                    TextSpan(
                      text: ' Sign In',
                      style: kDescTextStyle.copyWith(
                        color: kGreenColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: LoginPage(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ],
            )),
            addVerticalSpacing(34),
            Column(
              children: [
                CustomTextField(
                  controller: fullNameController,
                  hintText: 'Full name',
                  suffixIcon: Icons.person,
                ),
                addVerticalSpacing(14),
                CustomTextField(
                  controller: emailController,
                  hintText: 'Email',
                  suffixIcon: Icons.email,
                ),
                addVerticalSpacing(14),
                CustomTextField(
                  controller: passwordController,
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
                ReusableButton(const Text('SIGN UP'), () {}, kGreenColor),
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
