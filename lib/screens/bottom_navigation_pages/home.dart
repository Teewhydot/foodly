import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/models/featured_partners.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/carousel_slider_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FeaturedPartner> featuredPartners = [
      FeaturedPartner(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: "4.5",
        time: "30-40 min",
      ),
      FeaturedPartner(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: "4.5",
        time: "30-40 min",
      ),
      FeaturedPartner(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: "4.5",
        time: "30-40 min",
      ),
      FeaturedPartner(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: "4.5",
        time: "30-40 min",
      ),
      FeaturedPartner(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: "4.5",
        time: "30-40 min",
      ),
      FeaturedPartner(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: "4.5",
        time: "30-40 min",
      ),
    ];
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
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: ListView(
          children: [
            const Divider(),
            addVerticalSpacing(24),
            const CarouselSliderWidget(
                Assets.imagesA1, Assets.imagesA2, Assets.imagesA3),
            addVerticalSpacing(34),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Featured partners',
                  style: kTitleTextStyle.copyWith(
                    fontSize: 25.sp,
                  ),
                ),
                const Text(
                  'See all',
                  style: kGreenText,
                ),
              ],
            ),
            addVerticalSpacing(24),
            SizedBox(
              height: 320.h,
              child: ListView.builder(
                itemCount: featuredPartners.length,
                itemBuilder: (context, index) {
                  return FeaturedPartnerWidget(
                    image: featuredPartners[index].image,
                    name: featuredPartners[index].name,
                    location: featuredPartners[index].location,
                    rating: featuredPartners[index].rating,
                    time: featuredPartners[index].time,
                    deliveryFee: 'Free Delivery',
                  );
                },
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                // children: featuredPartners,
              ),
            ),
            addVerticalSpacing(34),
            SizedBox(
              width: 335.w,
              height: 170.h,
              child: Image.asset(Assets.imagesPromo),
            ),
            addVerticalSpacing(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Best picks',
                  style: kTitleTextStyle.copyWith(
                    fontSize: 25.sp,
                  ),
                ),
                const Text(
                  'See all',
                  style: kGreenText,
                ),
              ],
            ),
            addVerticalSpacing(4),
            Text(
              'Restaurants by teams',
              style: kTitleTextStyle.copyWith(
                fontSize: 25.sp,
              ),
            ),
            addVerticalSpacing(24),
            SizedBox(
              height: 320.h,
              child: ListView.builder(
                itemCount: featuredPartners.length,
                itemBuilder: (context, index) {
                  return FeaturedPartnerWidget(
                    image: featuredPartners[index].image,
                    name: featuredPartners[index].name,
                    location: featuredPartners[index].location,
                    rating: featuredPartners[index].rating,
                    time: featuredPartners[index].time,
                    deliveryFee: 'Free Delivery',
                  );
                },
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                // children: featuredPartners,
              ),
            ),
            addVerticalSpacing(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'All restaurants',
                  style: kTitleTextStyle.copyWith(
                    fontSize: 25.sp,
                  ),
                ),
                const Text(
                  'See all',
                  style: kGreenText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
