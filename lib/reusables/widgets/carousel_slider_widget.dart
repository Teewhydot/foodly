import 'package:carousel_pro/carousel_pro.dart' show Carousel;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/reusables/constants.dart';

class CarouselSliderWidget extends StatelessWidget {
  final image;
  final image2;
  final image3;

  const CarouselSliderWidget(this.image, this.image2, this.image3);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 185.h,
        width: 335.w,
        child: Carousel(
          autoplay: true,
          images: [
            ExactAssetImage(image),
            ExactAssetImage(image2),
            ExactAssetImage(image3),
          ],
          dotIncreasedColor: kGreenColor,
          showIndicator: true,
          dotSize: 4.0,
          dotSpacing: 15.0,
          dotColor: kGreenColor,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.black.withOpacity(0.5),
          borderRadius: true,
        ),
      ),
    );
  }
}
