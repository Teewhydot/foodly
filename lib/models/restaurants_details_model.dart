import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/models/featured_partners.dart';
import 'package:foodly/models/restaurants.dart';
import 'package:foodly/models/sea_foods.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/carousel_slider_widget.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';

class RestaurantDetails extends StatelessWidget {
  const RestaurantDetails({Key? key}) : super(key: key);

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
    List<Restaurants> restaurants = [
      Restaurants(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 4.5,
        numberOfRatings: 100,
        id: 1,
        time: "30-40 min",
        deliveryFee: "UGX 2000",
        foodType: ["Coffee", "Tea", "Bakery"],
      ),
      Restaurants(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 4.5,
        numberOfRatings: 100,
        id: 1,
        time: "30-40 min",
        deliveryFee: "UGX 2000",
        foodType: ["Coffee", "Tea", "Bakery"],
      ),
      Restaurants(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 4.5,
        numberOfRatings: 100,
        id: 1,
        time: "30-40 min",
        deliveryFee: "UGX 2000",
        foodType: ["Coffee", "Tea", "Bakery"],
      ),
      Restaurants(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 4.5,
        numberOfRatings: 100,
        id: 1,
        time: "30-40 min",
        deliveryFee: "UGX 2000",
        foodType: ["Coffee", "Tea", "Bakery"],
      ),
      Restaurants(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 4.5,
        numberOfRatings: 100,
        id: 1,
        time: "30-40 min",
        deliveryFee: "UGX 2000",
        foodType: ["Coffee", "Tea", "Bakery"],
      ),
      Restaurants(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 4.5,
        numberOfRatings: 100,
        id: 1,
        time: "30-40 min",
        deliveryFee: "UGX 2000",
        foodType: ["Coffee", "Tea", "Bakery"],
      ),
      Restaurants(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 4.5,
        numberOfRatings: 100,
        id: 1,
        time: "30-40 min",
        deliveryFee: "UGX 2000",
        foodType: ["Coffee", "Tea", "Bakery"],
      ),
      Restaurants(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 4.5,
        numberOfRatings: 100,
        id: 1,
        time: "30-40 min",
        deliveryFee: "UGX 2000",
        foodType: ["Coffee", "Tea", "Bakery"],
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
              width: constraints.maxWidth,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  const CustomCarouselWidget(
                    Assets.imagesArmImage,
                    Assets.imagesArmImage,
                    Assets.imagesArmImage,
                  ),
                  Align(
                    alignment: const Alignment(-0.9, -0.8),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Positioned(
                    bottom: 480,
                    left: 0,
                    child: Row(
                      children: [
                        addHorizontalSpacing(20),
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'MacDonalds',
                              style: kBoldTextStyle,
                            )),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 450,
                    child: Row(
                      children: [
                        addHorizontalSpacing(20),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text('vegan, fast food, chicken',
                                style: kDescTextStyle)),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 420,
                    child: Row(
                      children: [
                        addHorizontalSpacing(20),
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text('4.5', style: kTitleTextStyle)),
                        addHorizontalSpacing(5),
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Icon(
                              Icons.star,
                              color: kGreenColor,
                              size: 20,
                            )),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text('200+ ratings', style: kDescTextStyle)),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 360,
                    right: 50,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                FontAwesomeIcons.alignRight,
                                color: kGreenColor,
                                size: 20,
                              ),
                              addHorizontalSpacing(5),
                              const Text('Free Delivery'),
                              addHorizontalSpacing(5),
                              const Icon(
                                FontAwesomeIcons.alignRight,
                                color: kGreenColor,
                                size: 20,
                              ),
                              addHorizontalSpacing(5),
                              const Text('25 min '),
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
                  ),
                  Positioned(
                    bottom: 320,
                    left: 20,
                    child: Row(
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
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
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
                  ),
                  Positioned(
                    bottom: 10,
                    left: 20,
                    child: Row(
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
                  ),
                ],
              ),
            ),
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
                })
          ],
        ),
      ),
    );
  }
}
