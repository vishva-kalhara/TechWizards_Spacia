import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacia/widgets/templates/search.dart';
import 'package:spacia/widgets/templates/top_nav.dart';
// import 'package:spacia/widgets/templates/bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // void _selectPage(int index) {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchCard(),

          // SearchCard(),
          // SearchCard(),
          // SearchCard(),
          // SearchCard(),
          SizedBox(height: 24),
          // Stack(positioned: SvgPicture.asset("assets/party_banner.svg")),
        ],
      ),
    );
  }
}
