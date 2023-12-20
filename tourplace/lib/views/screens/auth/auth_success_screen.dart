import 'package:flutter/material.dart';
import 'package:tourplace/basic_component/custom_btn.dart';
import 'package:tourplace/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourplace/views/components/bottom_navbar.dart';

class AuthSuccessScreen extends StatelessWidget {
  static String routName = "SuccessScreen";
  const AuthSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/congrats.png"),
            SizedBox(
              height: 30.h,
            ),
            Text("You're all set!",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    height: 1.5,
                    letterSpacing: 0,
                    fontSize: 18)),
            SizedBox(
              height: 40.h,
            ),
            CustomBtn(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ButtomNavBar.routName);
                },
                text: "Let's Begin")
          ],
        ),
      ),
    );
  }
}
