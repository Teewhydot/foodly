import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/filter.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/models/featured_partners.dart';
import 'package:foodly/models/restaurants.dart';
import 'package:foodly/providers/provider.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/carousel_slider_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FoodlyProvider>(context);
    List<FeaturedPartner> featuredPartners = [
      FeaturedPartner(
        image: Assets.searchImagesFilter2,
        name: "KFF",
        location: "Kampala, Uganda",
        rating: 3.5,
        time: "30-40 min",
      ),
      FeaturedPartner(
        image: Assets.imagesFp,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 3.5,
        time: "30-40 min",
      ),
      FeaturedPartner(
        image: Assets.searchImagesFilter2,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 3.5,
        time: "30-40 min",
      ),
      FeaturedPartner(
        image: Assets.searchImagesFilter3,
        name: "The Coffee Bean & Tea Leaf",
        location: "Kampala, Uganda",
        rating: 3.5,
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
        name: "MacDonalds",
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
        name: "Carbon",
        location: "Fut, Nigeria",
        rating: 4.5,
        numberOfRatings: 100,
        id: 1,
        time: "30-40 min",
        deliveryFee: "UGX 2000",
        foodType: ["Coffee", "Tea", "Bakery"],
      ),
    ];
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: Column(
          children: [
            Text('DELIVERY TO', style: kGreenText.copyWith(fontSize: 12.sp)),
            addVerticalSpacing(3),
            Text(provider.location,
                style: kBlackText.copyWith(fontSize: 16.sp)),
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const Filter(),
                          type: PageTransitionType.topToBottom));
                },
                child: const Center(
                    child: SizedBox(
                        height: 20,
                        child: Text(
                          'Filter',
                          style: kBlackText,
                        )))),
          )
        ],
      ),
      body: HomeBody(
          featuredPartners: featuredPartners, restaurants: restaurants),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.featuredPartners,
    required this.restaurants,
  }) : super(key: key);

  final List<FeaturedPartner> featuredPartners;
  final List<Restaurants> restaurants;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      child: ListView(
        key: const PageStorageKey('home'),
        children: [
          addVerticalSpacing(24),
          const CarouselSliderWidget(Assets.onboardingImagesA1,
              Assets.onboardingImagesA2, Assets.onboardingImagesA3),
          addVerticalSpacing(14),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: AllRestaurants(
                            restaurants: restaurants,
                          ),
                          type: PageTransitionType.bottomToTop));
                },
                child: const Text(
                  'See all',
                  style: kGreenText,
                ),
              ),
            ],
          ),
          FeaturedPartners(featuredPartners: featuredPartners),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: AllRestaurants(
                            restaurants: restaurants,
                          ),
                          type: PageTransitionType.bottomToTop));
                },
                child: const Text(
                  'See all',
                  style: kGreenText,
                ),
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
          BestPicks(featuredPartners: featuredPartners),
          addVerticalSpacing(14),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: AllRestaurants(
                            restaurants: restaurants,
                          ),
                          type: PageTransitionType.bottomToTop));
                },
                child: const Text(
                  'See all',
                  style: kGreenText,
                ),
              ),
            ],
          ),
          addVerticalSpacing(20),
          AllRestaurants(restaurants: restaurants),
        ],
      ),
    );
  }
}

class AllRestaurants extends StatelessWidget {
  const AllRestaurants({
    Key? key,
    required this.restaurants,
  }) : super(key: key);

  final List<Restaurants> restaurants;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return RestaurantsWidget(
            width: 290,
            height: 185,
            image: restaurants[index].image,
            name: restaurants[index].name,
            location: restaurants[index].location,
            rating: restaurants[index].rating,
            numberOfRatings: restaurants[index].numberOfRatings,
            time: restaurants[index].time,
            deliveryFee: restaurants[index].deliveryFee,
            foodType: restaurants[index].foodType,
            id: 1,
          );
        },
        itemCount: restaurants.length,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
      ),
    );
  }
}

class BestPicks extends StatelessWidget {
  const BestPicks({
    Key? key,
    required this.featuredPartners,
  }) : super(key: key);

  final List<FeaturedPartner> featuredPartners;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

class FeaturedPartners extends StatelessWidget {
  const FeaturedPartners({
    Key? key,
    required this.featuredPartners,
  }) : super(key: key);

  final List<FeaturedPartner> featuredPartners;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.builder(
        key: const PageStorageKey('featured-partners'),
        itemCount: featuredPartners.length,
        itemBuilder: (context, index) {
          return FeaturedPartnerWidget(
            width: 190.w,
            height: 220.0.h,
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
    );
  }
}
