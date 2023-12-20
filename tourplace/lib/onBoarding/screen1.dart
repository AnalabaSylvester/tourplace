import 'package:flutter/material.dart';
import 'package:tourplace/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/scales.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: width,
            height: hieght,
            color: kWhite,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Image.asset(
                    "assets/images/onboard_one.png",
                    height: 270,
                  ),
                  const SizedBox(height: 60),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Explore The World With Tourplace",
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                  letterSpacing: 0,
                                  fontSize: 23)),
                      const SizedBox(height: 20),
                      Text(
                        "Tour roud the world, Explore the world wit us using Tourplace just with few clicks..",
                        textAlign: TextAlign.start,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Colors.black54,
                                fontWeight: FontWeight.w800,
                                height: 1.3,
                                letterSpacing: 0,
                                fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
