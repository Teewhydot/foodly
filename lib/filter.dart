// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:foodly/models/chip_model.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/filter_chip.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int categoriesIndex = 0;
  int dietaryIndex = 1;
  int priceIndex = 2;
  List<List<CustomChip>> chipsList = [
    [
      CustomChip(chipText: "All", isSelected: false),
      CustomChip(chipText: "Branch", isSelected: false),
      CustomChip(chipText: "Dinner", isSelected: false),
      CustomChip(chipText: "Burger", isSelected: false),
      CustomChip(chipText: "Chinese", isSelected: false),
      CustomChip(chipText: "Pizza", isSelected: false),
      CustomChip(chipText: "Salad", isSelected: false),
      CustomChip(chipText: "Breakfast", isSelected: false),
      CustomChip(chipText: "Soup", isSelected: false),
    ],
    [
      CustomChip(chipText: "Vegan", isSelected: false),
      CustomChip(chipText: "Vegetarian", isSelected: false),
      CustomChip(chipText: "Gluten Free", isSelected: false),
      CustomChip(chipText: "Halal", isSelected: false),
      CustomChip(chipText: "Any", isSelected: false),
    ],
    [
      CustomChip(chipText: "\$ \$", isSelected: false),
      CustomChip(chipText: "\$ \$ \$", isSelected: false),
      CustomChip(chipText: "\$ \$ \$ \$", isSelected: false),
      CustomChip(chipText: "\$ \$ \$ \$ \$", isSelected: false),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kBlackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Filters',
          style: kBlackText,
        ),
      ),
      backgroundColor: kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                addVerticalSpacing(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style: kBlackText,
                    ),
                    GestureDetector(
                        onTap: () {
                          // iterate through the list and deselect all the items
                          for (int i = 0; i < chipsList[0].length; i++) {}
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         child: const Filter(),
                          //         type: PageTransitionType.topToBottom));
                        },
                        child: const Center(
                            child: SizedBox(
                                height: 20,
                                child: Text(
                                  'Clear all',
                                  style: kBlackText,
                                ))))
                  ],
                ),
                Column(
                  children: [
                    addVerticalSpacing(20),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: chipsList[categoriesIndex]
                          .map((e) => ReusableFilterChip(
                                text: Text(e.chipText),
                                isSelected: e.isSelected,
                              ))
                          .toList(),
                    ),
                    addVerticalSpacing(10),
                    Row(
                      children: const [],
                    ),
                  ],
                ),
                addVerticalSpacing(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Dietary',
                      style: kBlackText,
                    ),
                    GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         child: const Filter(),
                          //         type: PageTransitionType.topToBottom));
                        },
                        child: const Center(
                            child: SizedBox(
                                height: 20,
                                child: Text(
                                  'Clear all',
                                  style: kBlackText,
                                ))))
                  ],
                ),
                Column(
                  children: [
                    addVerticalSpacing(20),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: chipsList[dietaryIndex]
                          .map((e) => ReusableFilterChip(
                                text: Text(e.chipText),
                                isSelected: e.isSelected,
                              ))
                          .toList(),
                    ),
                  ],
                ),
                addVerticalSpacing(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Price',
                      style: kBlackText,
                    ),
                    GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         child: const Filter(),
                          //         type: PageTransitionType.topToBottom));
                        },
                        child: const Center(
                            child: SizedBox(
                                height: 20,
                                child: Text(
                                  'Clear all',
                                  style: kBlackText,
                                ))))
                  ],
                ),
                Column(
                  children: [
                    addVerticalSpacing(20),
                    Wrap(
                      spacing: 10,
                      children: chipsList[priceIndex]
                          .map((e) => ReusableFilterChip(
                                text: Text(e.chipText),
                                isSelected: e.isSelected,
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ],
            ),
            ReusableButton(const Text('APPLY FILTERS'), () {
              Navigator.pop(context);
            }, kGreenColor),
          ],
        ),
      ),
    );
  }
}