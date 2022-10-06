import 'package:flutter/material.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/models/filter_type.dart';
import 'package:foodly/reusables/constants.dart';
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
    int activeFilter = 0;
    List<FilterType> filterTypeList = [
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 120),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 120),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 120),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 120),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 120),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 120),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 120),
    ];
    final filterPages = [
      Column(
        children: [
          ListView.builder(
            key: const PageStorageKey('featured-partners'),
            itemCount: filterTypeList.length,
            itemBuilder: (context, index) {
              return FilterTypeWidget(
                image: filterTypeList[index].image,
                name: filterTypeList[index].text,
                count: filterTypeList[index].count,
              );
            },
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            // children: featuredPartners,
          ),
        ],
      ),
      Container(),
      Container(),
      Container(),
    ];

    final width = MediaQuery.of(context).size.width;
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
                Row(
                  children: [
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('All'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Brunch'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Dinner'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Burger'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Chinese'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                  ],
                ),
                addVerticalSpacing(10),
                Row(
                  children: [
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Pizza'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Salad'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Breakfast'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Soup'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Dinner'),
                        onSelected: (bool isChecked) {},
                      ),
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
                Row(
                  children: [
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Any'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Vegetarian'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Vegan'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('Glutton free'),
                        onSelected: (bool isChecked) {},
                      ),
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
                Row(
                  children: [
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('\$'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('\$\$'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('\$\$\$'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                    Expanded(
                      child: ReusableFilterChip(
                        isAllSelected: isAllSelected,
                        text: const Text('\$\$\$\$\$\$'),
                        onSelected: (bool isChecked) {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableFilterChip extends StatelessWidget {
  const ReusableFilterChip({
    Key? key,
    required this.isAllSelected,
    required this.text,
    required this.onSelected,
  }) : super(key: key);

  final bool isAllSelected;
  final Text text;
  final onSelected;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
        selectedColor: kGreenColor,
        pressElevation: 2,
        selected: isAllSelected,
        label: text,
        onSelected: onSelected);
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
