import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacia/app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacia/screens/home.dart';
import 'package:spacia/size_config.dart';

import 'package:spacia/routes/routes.dart' as route;

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(gradient: kGrad2),
            width: SizeConfig.blockSizeHorizontal! * 100,
            height: 500,
            child: Image.asset(
              "assets/onboarding.png",
              width: 300,
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical! * 4.5),
          SvgPicture.asset(
            "assets/logo.svg",
            height: 30,
          ),
          Text(
            "Experience a new Adventure.",
            style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: kBlack350),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical! * 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: btnStyle.copyWith(
                  backgroundColor: MaterialStateProperty.all<Color>(kTextBoxBorder),
                ),
                onPressed: () => Navigator.pushNamed(context, route.homePage),
                child: Text("Skip", style: poppinsRegular.copyWith(color: kBlack900)),
              ),
              const SizedBox(width: 10),
              TextButton(
                style: btnStyle.copyWith(
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 17, horizontal: 39),
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, route.signupPage),
                child: Text("Get Started", style: poppinsRegular),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Do you have an account?",
                style: poppinsRegular.copyWith(
                  fontSize: 14,
                  color: kBlack350,
                ),
              ),
              const SizedBox(width: 4),
              InkWell(
                onTap: () => Navigator.pushNamed(context, route.loginPage),
                child: Text(
                  "Sign in",
                  style: poppinsSemiBold.copyWith(
                    fontSize: 14,
                    color: kBlack,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
