// ignore_for_file: use_build_context_synchronously

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/providers/provider.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/reusables/widgets/validators.dart';
import 'package:foodly/screens/authentication/forgot_pasword.dart';
import 'package:foodly/screens/authentication/signup_page.dart';
import 'package:foodly/screens/location_screen.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
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
    AccessToken? _accessToken;
    bool hasInternet;
    final credentialsSignInProvider =
        Provider.of<CredentialsSignInProvider>(context, listen: false);
    final googleSignInProvider =
        Provider.of<GoogleSignInProvider>(context, listen: false);
    final faceBookLoginProvider =
        Provider.of<FacebookSignInProvider>(context, listen: false);
    return ModalProgressHUD(
      progressIndicator: const CircularProgressIndicator(
        color: kGreenColor,
      ),
      inAsyncCall: showSpinner,
      child: Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.start,
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
                        controller: _emailController,
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
                    addVerticalSpacing(24),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.r))),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _passwordController,
                        validator: passwordValidator,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.visiblePassword,
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
                                child: const Icon(Icons.lock)),
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
                              vertical: 10.0.h, horizontal: 20.0.w),
                        ),
                      ),
                    ),
                    addVerticalSpacing(24),
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
                    ReusableButton(const Text('SIGN IN'), () async {
                      hasInternet =
                          await InternetConnectionChecker().hasConnection;
                      if (hasInternet) {
                        if (_formKey.currentState!.validate()) {
                          startSpinning();
                          final loggedInUser =
                              await credentialsSignInProvider.login(
                                  _emailController.text,
                                  _passwordController.text);

                          if (loggedInUser != null) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: const Location(),
                                    type: PageTransitionType.rightToLeft));
                            stopSpinning();
                          } else {
                            stopSpinning();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Invalid Credentials'),
                              ),
                            );
                          }
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('No Internet Connection'),
                          ),
                        );
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
                            ]), () async {
                          _accessToken =
                              await faceBookLoginProvider.facebookLogin();
                          await faceBookLoginProvider.getUserFacebookData();
                          if (_accessToken != null) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: const Location(),
                                    type: PageTransitionType.rightToLeft));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Login Failed'),
                              ),
                            );
                          }
                        }, kDeepBlueColor),
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
                          final hasInternet =
                              await InternetConnectionChecker().hasConnection;

                          if (hasInternet) {
                            final newLoggedInUser =
                                await googleSignInProvider.login();
                            if (googleSignInProvider.currentUser != null) {
                              print('login successful');
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: const Location(),
                                      type: PageTransitionType.rightToLeft));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Login Failed'),
                                ),
                              );
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('No Internet Connection'),
                              ),
                            );
                          }
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
