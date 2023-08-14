import 'package:flutter/material.dart';
// import 'package:spacia/screens/onboarding.dart';

import 'package:spacia/routes/routes.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: OnboardingPage(),
      onGenerateRoute: route.controller,
      initialRoute: route.onboardingPage,
    );
  }
}
