import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourplace/constants/colors.dart';
import 'package:tourplace/onBoarding/on_boarding.dart';

class Splashscreen extends StatelessWidget {
  static String routName = "SplashScreen";
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushNamedAndRemoveUntil(
          context, OnBoarding.routName, (route) => false);
    });
          SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: kBackground));
    return Scaffold(

        backgroundColor: kBackground,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Image.asset("assets/images/logo_one.png")),
            ]));
  }
}
