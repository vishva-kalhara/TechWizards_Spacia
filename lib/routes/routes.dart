import 'package:flutter/material.dart';

// import 'package:spacia/screens/home.dart';
import 'package:spacia/screens/login.dart';
import 'package:spacia/screens/onboarding.dart';
import 'package:spacia/screens/sign_up.dart';
import 'package:spacia/screens/tabs.dart';
import 'package:spacia/screens/travel_details.dart';

const String homePage = 'home';
const String loginPage = 'login';
const String onboardingPage = 'onboarding';
const String signupPage = 'signup';
const String travelDetails = 'travelDetails';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => const TabsScreen());
    case loginPage:
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case onboardingPage:
      return MaterialPageRoute(builder: (context) => const OnboardingPage());
    case signupPage:
      return MaterialPageRoute(builder: (context) => const SignUpPage());
    case travelDetails:
      return MaterialPageRoute(builder: (context) => const TraveldetailsScreen());
    default:
      throw ("Route name does not exist!");
  }
}
