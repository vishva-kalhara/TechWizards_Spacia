import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacia/app_style.dart';
import 'package:spacia/widgets/templates/card_home.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacia/widgets/templates/search.dart';
// import 'package:spacia/widgets/templates/top_nav.dart';
// import 'package:spacia/widgets/templates/bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // void _selectPage(int index) {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SearchCard(),
          const SizedBox(height: 24),
          Image.asset("assets/party_banner.png"),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Schedule",
                style: poppinsSemiBold.copyWith(color: kPrimary),
              ),
              Text(
                "View All",
                style: poppinsRegular.copyWith(color: kBlack350, fontSize: 14),
              ),
            ],
          ),
          const CardHome(
            fromMain: "LK",
            fromSub: "Colombo",
            fromDate: "30-Aug",
            toMain: "MRS",
            toSub: "HQ",
            toDate: "30-Dec",
            interchanges: 5,
          ),
          const CardHome(
            fromMain: "US",
            fromSub: "New York",
            fromDate: "05-Sep",
            toMain: "MRS",
            toSub: "HQ",
            toDate: "05-Jan",
            interchanges: 4,
          ),
        ],
      ),
    );
  }
}
