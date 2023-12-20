import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourplace/basic_component/primary_app_bar.dart';
import 'package:tourplace/constants/colors.dart';
import 'package:tourplace/views/screens/components/email_input.dart';
import 'package:tourplace/views/screens/components/password_input.dart';

import '../../../basic_component/custom_btn.dart';
import '../../../basic_component/input_label.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static String routName = "ForgotPasswordScreen";
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        automaticallyImplyLeading: false,
        title: PrimaryAppBar(title: "Forgot"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/forgot.png"),
          SizedBox(height: 40.h),
          Text("Forgot Password",
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
            "Dont worry it happens. Please enter the phone number associated with your account",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.h,
              ),
              InPutLabel(label: "Enter your mobile number"),
              SizedBox(
                height: 10,
              ),
              PhoneInput(),
              SizedBox(
                height: 30.h,
              ),
              CustomBtn(
                onTap: (){
                  
                },
                text: "Send OTP Code"),
            ],
          )
        ],
      ),
    );
  }
}
