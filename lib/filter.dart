// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:page_transition/page_transition.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    bool isAllSelected = false;
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
                      children: const [
                        ReusableFilterChip(
                          text: Text('All'),
                        ),
                        ReusableFilterChip(
                          text: Text('Brunch'),
                        ),
                        ReusableFilterChip(
                          text: Text('Dinner'),
                        ),
                        ReusableFilterChip(
                          text: Text('Burger'),
                        ),
                        ReusableFilterChip(
                          text: Text('Chinese'),
                        ),
                        ReusableFilterChip(
                          text: Text('Pizza'),
                        ),
                        ReusableFilterChip(
                          text: Text('Salad'),
                        ),
                        ReusableFilterChip(
                          text: Text('Breakfast'),
                        ),
                        ReusableFilterChip(
                          text: Text('Soup'),
                        ),
                        ReusableFilterChip(
                          text: Text('Dinner'),
                        ),
                      ],
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
                      children: const [
                        ReusableFilterChip(
                          text: Text('Any'),
                        ),
                        ReusableFilterChip(
                          text: Text('Vegetarian'),
                        ),
                        ReusableFilterChip(
                          text: Text('Vegan'),
                        ),
                        ReusableFilterChip(
                          text: Text('Glutton free'),
                        ),
                      ],
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
                      children: const [
                        ReusableFilterChip(
                          text: Text('\$'),
                        ),
                        ReusableFilterChip(
                          text: Text('\$\$'),
                        ),
                        ReusableFilterChip(
                          text: Text('\$\$\$'),
                        ),
                        ReusableFilterChip(
                          text: Text('\$\$\$\$\$\$'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            ReusableButton(const Text('APPLY FILTERS'), () {
              // Navigator.push(
              //     context,
              //     PageTransition(
              //         child: SuccessActionWidget(
              //           heading: 'Your order has been placed successfuly',
              //           subHeading: '',
              //           buttonText: 'KEEP EXPLORING',
              //           onpressed: () {
              //             Navigator.push(
              //                 context,
              //                 PageTransition(
              //                     child: const MainScreen(),
              //                     type: PageTransitionType.topToBottom));
              //           },
              //         ),
              //         type: PageTransitionType.bottomToTop));
            }, kGreenColor),
          ],
        ),
      ),
    );
  }
}

class ReusableFilterChip extends StatefulWidget {
  const ReusableFilterChip({
    Key? key,
    required this.text,
  }) : super(key: key);
  final Text text;

  @override
  State<ReusableFilterChip> createState() => _ReusableFilterChipState();
}

class _ReusableFilterChipState extends State<ReusableFilterChip> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    List<Text> filters = [];
    return FilterChip(
        selectedColor: kGreenColor,
        pressElevation: 2,
        selected: isSelected,
        label: widget.text,
        onSelected: (val) {
          setState(() {
            isSelected = val;
            if (val) {
              filters.add(widget.text);
            } else {
              filters.removeWhere((element) => element == widget.text);
            }
          });
          print(filters);
        });
  }
}

//
//
//
//
// Expanded(
// child: Container(
// color: kWhiteColor,
// width: width,
// child: Column(
// children: [
// addVerticalSpacing(10),
// Container(
// height: 40.h,
// color: kWhiteColor,
// padding: const EdgeInsets.all(5),
// width: 375.h,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// GestureDetector(
// onTap: () {
// setState(() {
// activeFilter = 0;
// });
// },
// child: SizedBox(
// height: 54.h,
// width: 60.w,
// child: const Text('Type'))),
// GestureDetector(
// onTap: () {
// setState(() {
// activeFilter = 0;
// });
// },
// child: SizedBox(
// height: 54.h,
// width: 60.w,
// child: const Text('Sort by'))),
// GestureDetector(
// onTap: () {
// setState(() {
// activeFilter = 0;
// });
// },
// child: SizedBox(
// height: 54.h,
// width: 60.w,
// child: const Text('Price'))),
// GestureDetector(
// onTap: () {
// setState(() {
// activeFilter = 0;
// });
// },
// child: SizedBox(
// height: 54.h,
// width: 60.w,
// child: const Text('Diet type'))),
// ],
// ),
// ),
// const Divider(),
// SizedBox(
// height: 150,
// child: ListView.builder(
// key: const PageStorageKey('featured-partners'),
// itemCount: filterTypeList.length,
// itemBuilder: (context, index) {
// return FilterTypeWidget(
// image: filterTypeList[index].image,
// name: filterTypeList[index].text,
// count: filterTypeList[index].count,
// );
// },
// scrollDirection: Axis.horizontal,
// physics: const ClampingScrollPhysics(),
// // children: featuredPartners,
// ),
// ),
// addVerticalSpacing(50),
// LocationButton(const Text('COMPLETE',style: kBlackText,), (){}, kWhiteColor),
// ],
// )),
// ),
// Expanded(
// child: Container(
// color: Colors.transparent.withOpacity(0.5),
// width: width,
// ),
// )
