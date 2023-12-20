import 'package:flutter/material.dart';
import 'package:tourplace/basic_component/acct_question_txt.dart';
import 'package:tourplace/basic_component/custom_app_bar.dart';
import 'package:tourplace/basic_component/custom_btn.dart';
import 'package:tourplace/basic_component/fb_signin_btn.dart';
import 'package:tourplace/basic_component/google_signin_btn.dart';
import 'package:tourplace/basic_component/input_label.dart';
import 'package:tourplace/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourplace/views/screens/auth/signup.dart';
import 'package:tourplace/views/screens/components/email_input.dart';

import '../components/password_input.dart';

class SignInScreen extends StatefulWidget {
  static String routName = "SignIn";

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: CustomAppBar(title: "Login", actionTitle: "English"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo.png"),
                  ],
                ),
                SizedBox(
                  height: 60.h,
                ),
                Form(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      InPutLabel(label: "Enter your mobile number"),
                      SizedBox(
                        height: 10,
                      ),
                      PhoneInput(),
                      SizedBox(
                        height: 30.h,
                      ),
                      InPutLabel(label: "Enter your password"),
                      SizedBox(
                        height: 10,
                      ),
                      PasswordInput(),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomBtn(text: "Login"),
                      SizedBox(
                        height: 20.h,
                      ),
                      QuestionText(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed(SignUpScreen.routName);
                          },
                          question: "Dont have an account?",
                          answer: " Sign Up"),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "or",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GoogleSignBtn(),
                      SizedBox(
                        height: 20.h,
                      ),
                      FAceBookBtn(),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "or",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Continue as Guest",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                    ]))
              ]),
        ),
      ),
    );
  }
}
