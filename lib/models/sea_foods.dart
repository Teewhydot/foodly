import 'package:flutter/material.dart';
import 'package:foodly/reusables/constants.dart';

class SeaFoods {
  SeaFoods({
    required this.foodType,
    required this.ingredients,
    required this.name,
    required this.price,
    required this.image,
  });

  String foodType;
  List<String> ingredients;
  String name;
  String price;
  String image;
}

class SeafoodWidget extends StatelessWidget {
  final String foodType;
  final List<String> ingredients;
  final String name;
  final String price;
  final String image;

  const SeafoodWidget({
    super.key,
    required this.foodType,
    required this.ingredients,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            addHorizontalSpacing(30),
            SizedBox(
              height: 120,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: kBlackText,
                  ),
                  Row(
                    children: [
                      for (var i = 0; i < ingredients.length; i++)
                        Text(
                          ingredients[i],
                          style: kDescTextStyle,
                        ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(foodType, style: kDescTextStyle),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          price,
                          style: kGreenText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
