import 'package:flutter/material.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/models/featured_partners_prime.dart';
import 'package:foodly/models/restaurants.dart';
import 'package:foodly/reusables/constants.dart';

class AllRestaurants extends StatelessWidget {
  const AllRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: const Text(
          'Featured Partners',
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
      body: ListView.builder(
          itemCount: restaurants.length,
          scrollDirection: Axis.vertical,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return FeaturesPartnersPrimeWidget(
              height: 185.0,
              width: MediaQuery.of(context).size.width,
              image: restaurants[index].image,
              name: restaurants[index].name,
              location: restaurants[index].location,
              rating: restaurants[index].rating.toString(),
              time: restaurants[index].time,
              deliveryFee: restaurants[index].deliveryFee,
              foodType: restaurants[index].foodType,
              numberOfRatings: restaurants[index].numberOfRatings,
            );
          }),
    );
  }
}
