import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/carousel_slider_widget.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';

class AddToOrderPage extends StatefulWidget {
  const AddToOrderPage({Key? key}) : super(key: key);

  @override
  State<AddToOrderPage> createState() => _AddToOrderPageState();
}

class _AddToOrderPageState extends State<AddToOrderPage> {
  int? radioChoiceTop, radioChoiceBottom;
  bool isAsiVisible = false;

  @override
  Widget build(BuildContext context) {
    int radioValueTop, radioValueBottom;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: LayoutBuilder(
          builder: (context, constraints) => ListView(
            children: [
              SizedBox(
                height: 280.h,
                child: Stack(
                  children: [
                    const CustomCarouselWidget(
                      Assets.imagesArmImage,
                      Assets.imagesArmImage,
                      Assets.imagesArmImage,
                    ),
                    Align(
                      alignment: const Alignment(-0.99, -0.99),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'Sandwich',
                style: kBoldTextStyle,
              ),
              addVerticalSpacing(10),
              Text(
                'Shortbread, chocolate turtle cookies, and red velvet. 8 ounces cream cheese, softened.',
                style: kDescTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Choice of top cookie',
                    style: kBlackText,
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                        child: Text(
                      'Required',
                      style: kBlackText,
                    )),
                  )
                ],
              ),
              addVerticalSpacing(10),
              RadioListTile<int>(
                groupValue: radioChoiceTop,
                value: radioValueTop = 1,
                title: const Text('Chocolate Chip'),
                secondary: radioChoiceTop == radioValueTop
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceTop = 1;
                  });
                },
              ),
              RadioListTile<int>(
                groupValue: radioChoiceTop,
                value: radioValueTop = 2,
                title: const Text('Cookies and cream'),
                secondary: radioChoiceTop == radioValueTop
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceTop = 2;
                  });
                },
              ),
              RadioListTile<int>(
                groupValue: radioChoiceTop,
                value: radioValueTop = 3,
                title: const Text('Funffetti'),
                secondary: radioChoiceTop == radioValueTop
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceTop = 3;
                  });
                },
              ),
              RadioListTile<int>(
                groupValue: radioChoiceTop,
                value: radioValueTop = 4,
                title: const Text('M and M'),
                secondary: radioChoiceTop == radioValueTop
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceTop = 4;
                  });
                },
              ),
              RadioListTile<int>(
                groupValue: radioChoiceTop,
                value: radioValueTop = 5,
                title: const Text('Red velvet'),
                secondary: radioChoiceTop == radioValueTop
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceTop = 5;
                  });
                },
              ),
              RadioListTile<int>(
                groupValue: radioChoiceTop,
                value: radioValueTop = 6,
                title: const Text('Peanut Butter'),
                secondary: radioChoiceTop == radioValueTop
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceTop = 6;
                  });
                },
              ),
              RadioListTile<int>(
                groupValue: radioChoiceTop,
                value: radioValueTop = 7,
                title: const Text('Snickerdoodle'),
                secondary: radioChoiceTop == radioValueTop
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceTop = 7;
                  });
                },
              ),
              RadioListTile<int>(
                groupValue: radioChoiceTop,
                value: radioValueTop = 8,
                title: const Text('White chocolate Macademia'),
                secondary: radioChoiceTop == radioValueTop
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceTop = 8;
                  });
                },
              ),
              addVerticalSpacing(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Choice of bottom cookie',
                    style: kBlackText,
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                        child: Text(
                      'Required',
                      style: kBlackText,
                    )),
                  )
                ],
              ),
              addVerticalSpacing(10),
              RadioListTile<int>(
                groupValue: radioChoiceBottom,
                value: radioValueBottom = 1,
                title: const Text('M and M'),
                secondary: radioChoiceBottom == radioValueBottom
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceBottom = 1;
                  });
                },
              ),
              RadioListTile<int>(
                groupValue: radioChoiceBottom,
                value: radioValueBottom = 2,
                title: const Text('Red velvet'),
                secondary: radioChoiceBottom == radioValueBottom
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceBottom = 2;
                  });
                },
              ),
              RadioListTile<int>(
                groupValue: radioChoiceBottom,
                value: radioValueBottom = 3,
                title: const Text('Peanut Butter'),
                secondary: radioChoiceBottom == radioValueBottom
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceBottom = 3;
                  });
                },
              ),
              RadioListTile<int>(
                groupValue: radioChoiceBottom,
                value: radioValueBottom = 4,
                title: const Text('Snickerdoodle'),
                secondary: radioChoiceBottom == radioValueBottom
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceBottom = 4;
                  });
                },
              ),
              RadioListTile<int>(
                groupValue: radioChoiceBottom,
                value: radioValueBottom = 5,
                title: const Text('White chocolate Macademia'),
                secondary: radioChoiceBottom == radioValueBottom
                    ? const Icon(
                        Icons.check_circle,
                        color: kGreenColor,
                      )
                    : null,
                onChanged: (value) {
                  setState(() {
                    radioChoiceBottom = 5;
                  });
                },
              ),
              addVerticalSpacing(10),
              const SpecialInstructions(),
              addVerticalSpacing(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: kGreenColor,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                  addHorizontalSpacing(10),
                  const Text('01'),
                  addHorizontalSpacing(10),
                  const CircleAvatar(
                    backgroundColor: kGreenColor,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              addVerticalSpacing(20),
              ReusableButton(
                  const Text('Add to order ( \$11.98 )'), () {}, kGreenColor),
              addVerticalSpacing(10),
            ],
          ),
        ),
      ),
    );
  }
}

class SpecialInstructions extends StatelessWidget {
  const SpecialInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController specialInstructionsController =
        TextEditingController();
    return ExpandableNotifier(
      // <-- Provides ExpandableController to its children
      child: Column(
        children: [
          Expandable(
            // <-- Driven by ExpandableController from ExpandableNotifier
            collapsed: ExpandableButton(
              // <-- Expands when tapped on the cover photo
              child: Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Add special instructions'),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            expanded: ScrollOnExpand(
              child: Column(children: [
                TextField(
                  controller: specialInstructionsController,
                  cursorColor: Colors.black,
                  minLines: 7,
                  maxLines: 7,
                  keyboardType: TextInputType.multiline,
                  onChanged: (newValue) {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0,
                          style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0.h, horizontal: 20.0.w),
                  ),
                ),
                addVerticalSpacing(10),
                ExpandableButton(
                  // <-- Collapses when tapped on
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      height: 50,
                      width: 100,
                      child: Center(
                          child: Text(
                        "Cancel",
                        style: kDescTextStyle,
                      ))),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
