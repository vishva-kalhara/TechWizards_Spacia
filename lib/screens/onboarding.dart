import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacia/routes/routes.dart' as route;
import 'package:spacia/app_style.dart';
import 'package:spacia/services/auth.dart';
import 'package:spacia/size_config.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final AuthService _auth = AuthService();

    void signInAnonimously() async {
      dynamic result = await _auth.signInAnon();
      if (result == null) {
        print("Error in Anonim");
      } else {
        print(result);
        // print(result.User);
        // print(result.metadata);
        // print(result.metadata.uid);
        // Navigator.pushNamed(context, route.homePage);
      }
    }

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
            style: poppinsRegular.copyWith(
              color: kBlack350,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 45),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: btnStyle.copyWith(
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 17, horizontal: 64),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(kTextBoxBorder),
                ),
                onPressed: signInAnonimously,
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
          ),
        ],
      ),
    );
  }
}
