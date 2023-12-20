import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourplace/basic_component/primary_app_bar.dart';
import 'package:tourplace/constants/colors.dart';
import 'package:tourplace/views/screens/components/password_input.dart';

import '../../../basic_component/custom_btn.dart';
import '../../../basic_component/input_label.dart';

class ResetScreen extends StatefulWidget {
  static String routName = "ResetScreen";
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        automaticallyImplyLeading: false,
        title: PrimaryAppBar(title: "Reset"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/reset.png"),
          SizedBox(height: 40.h),
          Text("Reset Your Password",
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  height: 1.5,
                  letterSpacing: 0,
                  fontSize: 22)),
          SizedBox(height: 20.h),
          SizedBox(height: 20.h),
          Text(
            "Now you can reset your old password  ",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60.h,             ),
              InPutLabel(label: "Enter a new password"),
              SizedBox(
                height: 10,
              ),
              PasswordInput(),
              SizedBox(
                height: 30.h,
              ),
              InPutLabel(label: "Enter a new password"),
              SizedBox(
                height: 10,
              ),
              PasswordInput(),
              SizedBox(
                height: 30.h,
              ),
              CustomBtn(text: "Submit"),
            ],
          )
        ],
      ),
    );
  }
}
