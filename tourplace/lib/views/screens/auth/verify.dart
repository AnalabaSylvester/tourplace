import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourplace/basic_component/acct_question_txt.dart';
import 'package:tourplace/basic_component/custom_btn.dart';
import 'package:tourplace/views/screens/auth/auth_success_screen.dart';

import '../../../basic_component/primary_app_bar.dart';
import '../../../constants/colors.dart';

class Verification extends StatefulWidget {
  static String routName = "Verifiation";
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        automaticallyImplyLeading: false,
        title: PrimaryAppBar(title: "Verify"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.h),
            Image.asset("assets/images/img.png"),
            SizedBox(height: 40.h),
            Text("Enter OTP",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    height: 1.5,
                    letterSpacing: 0,
                    fontSize: 22)),
            SizedBox(height: 20.h),
            Text(
              "An OTP has been sent to you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20.h),
            Text(
              "+2343234345456",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 40.h),

            // otp boxes here
            SizedBox(height: 20.h),
            CustomBtn(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(AuthSuccessScreen.routName);
                },
                text: "Verify"),
            SizedBox(height: 20.h),
            QuestionText(question: "Resend OTP", answer: " (00:12)")
          ],
        ),
      ),
    );
  }
}
