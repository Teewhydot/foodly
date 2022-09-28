import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/carousel_slider_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: Column(
          children: [
            Text('DELIVERY TO', style: kGreenText.copyWith(fontSize: 12.sp)),
            const Text(
              'California, USA',
              style: kTitleTextStyle,
            ),
          ],
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
      body: ListView(
        children: [
          const Divider(),
          addVerticalSpacing(24),
          const CarouselSliderWidget(
              Assets.imagesA1, Assets.imagesA2, Assets.imagesA3),
        ],
      ),
    );
  }
}
