import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/generated/assets.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/screens/bottom_navigation_pages/home.dart';
import 'package:foodly/screens/bottom_navigation_pages/search/search.dart';
import 'package:foodly/screens/bottom_navigation_pages/search/search_results.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const SearchRestaurant(),
    const SearchResults(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 88.w,
        color: kWhiteColor,
        padding: const EdgeInsets.all(5),
        width: 375.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    child: SizedBox(
                        height: 54.h,
                        width: 60.w,
                        child: Image.asset(pageIndex == 0
                            ? Assets.imagesHA
                            : Assets.imagesHI))),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    child: SizedBox(
                        height: 54.h,
                        width: 60.w,
                        child: Image.asset(pageIndex == 1
                            ? Assets.imagesSA
                            : Assets.imagesSI))),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    child: SizedBox(
                        height: 54.h,
                        width: 60.w,
                        child: Image.asset(pageIndex == 2
                            ? Assets.imagesOA
                            : Assets.imagesOI))),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    child: SizedBox(
                        height: 54.h,
                        width: 60.w,
                        child: Image.asset(pageIndex == 3
                            ? Assets.imagesPA
                            : Assets.imagesPI))),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: kWhiteColor,
      body: pages[pageIndex],
    );
  }
}
