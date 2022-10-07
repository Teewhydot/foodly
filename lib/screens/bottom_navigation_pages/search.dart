import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/models/filter_type.dart';
import 'package:foodly/reusables/constants.dart';

class SearchRestaurant extends StatelessWidget {
  const SearchRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FilterType> filterTypeList = [
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 320),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 520),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 125),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 126),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 165),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 233),
      FilterType(
          image: Assets.imagesFeaturedpartners, text: 'Burgers', count: 755),
    ];
    List<Widget> getFilterTypeList() {
      List<Widget> filterTypeWidgetList = [];
      for (var i = 0; i < filterTypeList.length; i++) {
        filterTypeWidgetList.add(FilterTypeWidget(
            image: filterTypeList[i].image,
            name: filterTypeList[i].text,
            count: filterTypeList[i].count));
      }
      return filterTypeWidgetList;
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: ListView(
        children: [
          addVerticalSpacing(20),
          const Text(
            'Search',
            style: kBoldTextStyle,
          ),
          addVerticalSpacing(10),
          TextField(
            textInputAction: TextInputAction.send,
            cursorColor: Colors.black,
            minLines: 1,
            maxLines: 5,
            keyboardType: TextInputType.multiline,
            onChanged: (newValue) {},
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xfffbfbfb),
              focusColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                    style: BorderStyle.none),
                borderRadius: BorderRadius.circular(15.r),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Search on foodly',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 20.0.w),
            ),
          ),
          addVerticalSpacing(20),
          const Text(
            'Top Restaurants',
            style: kBlackText,
          ),
          addVerticalSpacing(20),
          GridView(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: getFilterTypeList(),
          ),
        ],
      ),
    );
  }
}

class SearchFood extends StatelessWidget {
  const SearchFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FilterType> filterTypeList = [
      FilterType(
          image: Assets.searchImagesFilterblack1, text: 'Burgers', count: 320),
      FilterType(
          image: Assets.searchImagesFilterblack2, text: 'Burgers', count: 520),
      FilterType(
          image: Assets.searchImagesFilterblack3, text: 'Burgers', count: 125),
      FilterType(
          image: Assets.searchImagesFilterblack4, text: 'Burgers', count: 126),
      FilterType(
          image: Assets.searchImagesFilterblack5, text: 'Burgers', count: 165),
      FilterType(
          image: Assets.searchImagesFilterblack6, text: 'Burgers', count: 233),
      FilterType(
          image: Assets.searchImagesFilterblack7, text: 'Burgers', count: 755),
    ];
    List<Widget> getFilterTypeList() {
      List<Widget> filterTypeWidgetList = [];
      for (var i = 0; i < filterTypeList.length; i++) {
        filterTypeWidgetList.add(FilterTypeWidgetClone(
          image: filterTypeList[i].image,
        ));
      }
      return filterTypeWidgetList;
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: ListView(
        children: [
          addVerticalSpacing(20),
          const Text(
            'Search',
            style: kBoldTextStyle,
          ),
          addVerticalSpacing(10),
          TextField(
            textInputAction: TextInputAction.send,
            cursorColor: Colors.black,
            minLines: 1,
            maxLines: 5,
            keyboardType: TextInputType.multiline,
            onChanged: (newValue) {},
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xfffbfbfb),
              focusColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                    style: BorderStyle.none),
                borderRadius: BorderRadius.circular(15.r),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Search on foodly',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 20.0.w),
            ),
          ),
          addVerticalSpacing(20),
          const Text(
            'Top Foods',
            style: kBlackText,
          ),
          addVerticalSpacing(20),
          GridView(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: getFilterTypeList(),
          ),
        ],
      ),
    );
  }
}
