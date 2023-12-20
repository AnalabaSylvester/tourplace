import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourplace/constants/colors.dart';
import 'package:tourplace/onBoarding/screen1.dart';
import 'package:tourplace/onBoarding/screen2.dart';
import 'package:tourplace/onBoarding/screen3.dart';
import 'package:tourplace/providers/onboard_provider.dart';
import 'package:provider/provider.dart';
import 'package:tourplace/views/screens/auth/signin.dart';

class OnBoarding extends StatefulWidget {
  static String routName = "OnBoarding";
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController pageController = PageController();
  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
        SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
      backgroundColor: kWhite,
      body: Consumer<OnBoardNotifier>(
        builder: (context, onBoardNotifier, child) {
          return Stack(children: [
            PageView(
              
              physics: onBoardNotifier.isLastPage
                  ? const NeverScrollableScrollPhysics()
                  : const AlwaysScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: (page) {
                onBoardNotifier.isLastPage = page == 3;
              },
              children: [
                ScreenOne(),
                ScreenTwo(),
                ScreenThree(),
                SignInScreen()
              ],
            ),
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: onBoardNotifier
                      .isLastPage //Removes next and Skip from the last page
                  ? const SizedBox.shrink()
                  : Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.w, vertical: 20.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                pageController.jumpToPage(3);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 25),
                                child: Text(
                                  "Skip",
                                  style: TextStyle(
                                      color: kBackground,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
            // Dot indicatorz
            Positioned(
                child: onBoardNotifier.isLastPage
                    ? SizedBox.shrink()
                    : Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 30.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmoothPageIndicator(
                                controller: pageController,
                                count: 3,
                                effect: WormEffect(
                                  dotHeight: 10,
                                  dotWidth: 10,
                                  spacing: 10,
                                  type: WormType.thin,
                                  dotColor: Colors.grey,
                                  activeDotColor: kBackground,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  pageController.nextPage(
                                      duration: const Duration(
                                        milliseconds: 300,
                                      ),
                                      curve: Curves.easeOut);
                                },
                                child: Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      // color: Colors.red,
                                      border: Border.all(
                                          width: 1.5,
                                          style: BorderStyle.solid,
                                          color: kBackground)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: kBackground,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: kWhite,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )))
          ]);
        },
      ),
    );
  }
}
