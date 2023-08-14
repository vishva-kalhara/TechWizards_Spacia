import 'package:flutter/material.dart';

import 'package:spacia/screens/home.dart';
import 'package:spacia/screens/login.dart';
import 'package:spacia/screens/onboarding.dart';
import 'package:spacia/screens/sign_up.dart';

const String homePage = 'home';
const String loginPage = 'login';
const String onboardingPage = 'onboarding';
const String signupPage = 'signup';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case loginPage:
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case onboardingPage:
      return MaterialPageRoute(builder: (context) => const OnboardingPage());
    case signupPage:
      return MaterialPageRoute(builder: (context) => const SignUpPage());
    default:
      throw ("Route name does not exist!");
  }
}
