import 'package:flutter/cupertino.dart';
import 'package:tourplace/onBoarding/on_boarding.dart';
import 'package:tourplace/views/components/bottom_navbar.dart';
import 'package:tourplace/views/screens/app_pages.dart/notification.dart';
import 'package:tourplace/views/screens/auth/auth_success_screen.dart';
import 'package:tourplace/views/screens/auth/reset.dart';
import 'package:tourplace/views/screens/auth/signin.dart';
import 'package:tourplace/views/screens/auth/signup.dart';
import 'package:tourplace/views/screens/auth/verify.dart';
import 'package:tourplace/views/screens/splash/splash_screen.dart';

// routes for different screens
Map<String, WidgetBuilder> routes = {
  Splashscreen.routName: (context) => Splashscreen(),
  SignInScreen.routName: (context) => SignInScreen(),
  SignUpScreen.routName: (context) => SignUpScreen(),
  OnBoarding.routName: (context) => OnBoarding(),
  Verification.routName: (context) => Verification(),
  ResetScreen.routName: (context) => ResetScreen(),
  ButtomNavBar.routName: (context) => ButtomNavBar(),
  AuthSuccessScreen.routName: (context) => AuthSuccessScreen(),
  NotificationScreen.routName: (context) => NotificationScreen(),
};
