import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/reusables/widgets/validators.dart';
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
                              child: const LoginPage(),
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.r))),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: fullNameController,
                    validator: emailValidator,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.name,
                    onChanged: (newValue) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFieldFillColor,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: kGreenColor,
                            width: 3,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(8.0.r),
                        child: GestureDetector(
                            onTap: () async {}, child: const Icon(Icons.email)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: kGreenColor.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      hintText: 'Full Name',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 5.0.h, horizontal: 20.0.w),
                    ),
                  ),
                ),
                addVerticalSpacing(14),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.r))),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emailController,
                    validator: emailValidator,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (newValue) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFieldFillColor,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: kGreenColor,
                            width: 3,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(8.0.r),
                        child: GestureDetector(
                            onTap: () async {}, child: const Icon(Icons.email)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: kGreenColor.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      hintText: 'Email',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 5.0.h, horizontal: 20.0.w),
                    ),
                  ),
                ),
                addVerticalSpacing(14),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.r))),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: passwordController,
                    validator: emailValidator,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (newValue) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFieldFillColor,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: kGreenColor,
                            width: 3,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(8.0.r),
                        child: GestureDetector(
                            onTap: () async {}, child: const Icon(Icons.email)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: kGreenColor.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      hintText: 'Password',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 5.0.h, horizontal: 20.0.w),
                    ),
                  ),
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
