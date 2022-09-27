import 'package:flutter/material.dart';
import 'package:foodly/reusables/constants.dart';


class ReusableButton extends StatelessWidget {
  final Text buttonText;
  final onpressed;

  const ReusableButton(this.buttonText, this.onpressed, {super.key});

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
                    backgroundColor:  MaterialStateProperty.all( kGreenColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(color: Colors.blue)
                        )
                    )
                ),
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
