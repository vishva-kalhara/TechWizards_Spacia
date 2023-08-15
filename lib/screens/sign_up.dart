import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacia/app_style.dart';
import 'package:spacia/size_config.dart';
import 'package:spacia/routes/routes.dart' as route;

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: kGrad2),
        height: SizeConfig.blockSizeVertical! * 100,
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            SizedBox(height: SizeConfig.blockSizeVertical! * 5),
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(color: kWhite, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  const SizedBox(height: 14),
                  SvgPicture.asset(
                    "assets/logo.svg",
                    height: 20,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Create your account",
                    style: poppinsSemiBold.copyWith(color: kOnTextField),
                  ),
                  const SizedBox(height: 45),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: txtBox.copyWith(hintText: "Email", prefixIcon: const Icon(Icons.markunread)),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: txtBox.copyWith(hintText: "Password", prefixIcon: const Icon(Icons.lock)),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: txtBox.copyWith(hintText: "Confirm Password", prefixIcon: const Icon(Icons.lock)),
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: txtBox.copyWith(hintText: "Username", prefixIcon: const Icon(Icons.markunread)),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: txtBox.copyWith(hintText: "National ID", prefixIcon: const Icon(Icons.numbers)),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      style: btnStyle.copyWith(
                        padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 17),
                        ),
                      ),
                      onPressed: () => Navigator.pushNamed(context, route.homePage),
                      child: Text(
                        "Sign up",
                        style: poppinsRegular,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                style: btnStyle.copyWith(
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 17),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    kTextBoxBorder.withOpacity(.85),
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, route.loginPage),
                child: Text(
                  "I have an account",
                  style: poppinsSemiBold.copyWith(color: kBlack900),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
