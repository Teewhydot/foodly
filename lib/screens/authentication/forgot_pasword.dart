import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/reusables/widgets/validators.dart';
import 'package:foodly/screens/authentication/reset_email_success.dart';
import 'package:page_transition/page_transition.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: const Text(
          'Forgot Password',
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
              'Forgot password ?',
              style: kTitleTextStyle,
            ),
            addVerticalSpacing(20),
            RichText(
                text: TextSpan(
              text:
                  'Enter your email address and we will send you a reset instructions.',
              style: kDescTextStyle,
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
                ReusableButton(const Text('RESET PASSWORD'), () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const ResetSuccess(),
                          type: PageTransitionType.rightToLeft));
                }, kGreenColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
