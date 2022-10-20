import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/models/featured_partners.dart';
import 'package:foodly/models/sea_foods.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/carousel_slider_widget.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';

class RestaurantDetails extends StatelessWidget {
  final String restaurantName;
  final String restaurantImage;
  final String restaurantLocation;
  final double restaurantRating;
  final String restaurantTime;
  final String restaurantDeliveryFee;

  const RestaurantDetails({
    Key? key,
    required this.restaurantName,
    required this.restaurantImage,
    required this.restaurantLocation,
    required this.restaurantRating,
    required this.restaurantTime,
    required this.restaurantDeliveryFee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SeaFoods> seafoods = [
      SeaFoods(
        foodType: 'Seafood',
        ingredients: ['Shrimp', 'Crab', 'Fish'],
        name: 'Shrimp & Crab',
        price: ' \$12.00',
        image: Assets.imagesFeaturedpartners1,
      ),
      SeaFoods(
        foodType: 'Seafood',
        ingredients: ['Shrimp', 'Crab', 'Fish'],
        name: 'Shrimp & Crab',
        price: '\$ 12.00',
        image: Assets.imagesFeaturedpartners1,
      ),
    ];
    List<FeaturedPartner> featuredPartners = [
      FeaturedPartner(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 4.5,
        time: "30-40 min",
      ),
      FeaturedPartner(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 4.5,
        time: "30-40 min",
      ),
      FeaturedPartner(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 4.5,
        time: "30-40 min",
      ),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: LayoutBuilder(
        builder: (context, constraints) => ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 280.h,
              child: Stack(
                children: [
                  CustomCarouselWidget(
                    restaurantImage,
                    restaurantImage,
                    restaurantImage,
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
            addVerticalSpacing(10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        restaurantName,
                        style: kBoldTextStyle.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  addVerticalSpacing(10),
                  Row(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text('vegan, fast food, chicken',
                              style: kDescTextStyle)),
                    ],
                  ),
                  addVerticalSpacing(10),
                  Row(
                    children: [
                      Text(restaurantRating.toString(), style: kTitleTextStyle),
                      addHorizontalSpacing(5),
                      const Icon(
                        Icons.star,
                        color: kGreenColor,
                        size: 20,
                      ),
                      Text('200+ ratings', style: kDescTextStyle),
                    ],
                  ),
                  addVerticalSpacing(10),
                  Row(children: [
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.alignRight,
                          color: kGreenColor,
                          size: 20,
                        ),
                        addHorizontalSpacing(5),
                        Text(restaurantDeliveryFee),
                        addHorizontalSpacing(5),
                        const Icon(
                          FontAwesomeIcons.alignRight,
                          color: kGreenColor,
                          size: 20,
                        ),
                        addHorizontalSpacing(5),
                        Text(restaurantDeliveryFee),
                      ],
                    ),
                    SizedBox(
                        width: 140,
                        child: LocationButton(
                            Text(
                              'TAKE AWAY',
                              style: kGreenText.copyWith(fontSize: 14),
                            ),
                            () {},
                            kWhiteColor)),
                  ]),
                  addVerticalSpacing(10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Featured partners',
                        style: kTitleTextStyle.copyWith(
                          fontSize: 23.sp,
                        ),
                      ),
                    ],
                  ),
                  addVerticalSpacing(20),
                  SizedBox(
                    height: 320.h,
                    child: ListView.builder(
                      key: const PageStorageKey('best-picks'),
                      itemCount: featuredPartners.length,
                      itemBuilder: (context, index) {
                        return FeaturedPartnerWidget(
                          width: 240.0,
                          height: 160.0,
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Most popular',
                        style: kTitleTextStyle.copyWith(
                          fontSize: 23.sp,
                        ),
                      ),
                    ],
                  ),
                  addVerticalSpacing(20),
                  SizedBox(
                    height: 320.h,
                    child: ListView.builder(
                      key: const PageStorageKey('featured_partners'),
                      itemCount: featuredPartners.length,
                      itemBuilder: (context, index) {
                        return FeaturedPartnerWidget(
                          width: 240.0,
                          height: 160.0,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sea foods',
                          style: kTitleTextStyle.copyWith(
                            fontSize: 23.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpacing(20),
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: seafoods.length,
                      itemBuilder: (context, index) {
                        return SeafoodWidget(
                            foodType: seafoods[index].foodType,
                            ingredients: seafoods[index].ingredients,
                            name: seafoods[index].name,
                            price: seafoods[index].price,
                            image: seafoods[index].image);
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}