// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:foodly/reusables/constants.dart';

class ReusableButton extends StatelessWidget {
  final Widget buttonText;
  final onpressed;
  final buttonColor;

  const ReusableButton(this.buttonText, this.onpressed, this.buttonColor,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(width: double.infinity,height: 50),
              child: ElevatedButton(
                style: ButtonStyle(
                  //  foregroundColor: MaterialStateProperty.all(Colors.blue.shade800),
                    backgroundColor: MaterialStateProperty.all(buttonColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side:
                            const BorderSide(color: Colors.transparent)))),
                onPressed: onpressed,
                child: buttonText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LocationButton extends StatelessWidget {
  final Widget buttonText;
  final onPressed;
  final buttonColor;

  const LocationButton(this.buttonText, this.onPressed, this.buttonColor,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                  width: double.infinity, height: 50),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(buttonColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(color: kGreenColor)))),
                onPressed: onPressed,
                child: buttonText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
