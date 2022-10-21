// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/providers/provider.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/reusables/widgets/validators.dart';
import 'package:foodly/screens/authentication/forgot_pasword.dart';
import 'package:foodly/screens/authentication/login_page.dart';
import 'package:foodly/screens/location_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final user = FirebaseAuth.instance.currentUser;
  bool showSpinner = false;

  void startSpinning() {
    setState(() {
      showSpinner = true;
    });
  }

  void stopSpinning() {
    setState(() {
      showSpinner = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final providerListen =
        Provider.of<CredentialsSignInProvider>(context, listen: false);
    final providerListen1 =
        Provider.of<GoogleSignInProvider>(context, listen: false);
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      progressIndicator: const CircularProgressIndicator(
        color: kGreenColor,
      ),
      child: Scaffold(
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
          child: ListView(
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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.r))),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: fullNameController,
                        validator: nameValidator,
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
                                onTap: () async {},
                                child: const Icon(Icons.email)),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.r))),
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
                                onTap: () async {},
                                child: const Icon(Icons.email)),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.r))),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: passwordController,
                        validator: passwordValidator,
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
                                onTap: () async {},
                                child: const Icon(Icons.email)),
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
                    ReusableButton(const Text('SIGN UP'), () async {
                      if (_formKey.currentState!.validate()) {
                        startSpinning();
                        final newUser = await providerListen.signUp(
                            emailController.text, passwordController.text);
                        if (newUser != null) {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: const Location(),
                                  type: PageTransitionType.rightToLeft));
                          stopSpinning();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Sign Up Failed')));
                          stopSpinning();
                        }
                      }
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
                            ]), () async {
                          await providerListen1.login();
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: const Location(),
                                  type: PageTransitionType.rightToLeft));
                        }, kBlueColor),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
