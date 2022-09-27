import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/custom_text_field.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';

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
                CustomTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  suffixIcon: Icons.email,
                ),
                addVerticalSpacing(14),
                ReusableButton(
                    const Text('RESET PASSWORD'), () {}, kGreenColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
