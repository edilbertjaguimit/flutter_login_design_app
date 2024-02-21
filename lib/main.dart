import 'package:flutter/material.dart';
import 'package:flutter_login_design_app/pages/loading_page.dart';
import 'package:flutter_login_design_app/pages/login_page.dart';
import 'package:flutter_login_design_app/pages/onboarding_page.dart';
import 'package:flutter_login_design_app/pages/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomeLoading(),
      '/onBoarding': (context) => OnBoarding(),
      '/login': (context) => Login(),
      '/signUp': (context) => SignUp()
    },
  ));
}
