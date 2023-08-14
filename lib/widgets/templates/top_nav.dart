import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacia/app_style.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(gradient: kGrad2),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/logoBlack.svg", height: 24),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset("assets/user.svg", height: 24),
            ),
          ],
        ),
      ),
    );
  }
}
