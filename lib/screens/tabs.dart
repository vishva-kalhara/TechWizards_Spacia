import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:spacia/app_style.dart';
import 'package:spacia/screens/home.dart';
// import 'package:spacia/widgets/templates/bottom_nav.dart';
import 'package:spacia/widgets/templates/top_nav.dart';
// import 'package:spacia/widgets/templates/search.dart';
// import 'package:spacia/widgets/templates/bottom_nav.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  Widget content = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TopNavBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: content,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GNav(
        tabMargin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        gap: 8,
        backgroundColor: kWhite,
        color: kBlue500,
        activeColor: kPrimary,
        tabs: [
          GButton(
            onPressed: () {},
            icon: Icons.home,
            text: "Home",
            backgroundColor: kBlue100,
          ),
          GButton(
            onPressed: () {},
            icon: Icons.calendar_month_rounded,
            text: "Schedule",
            backgroundColor: kBlue100,
          ),
          GButton(
            onPressed: () {},
            icon: Icons.airplane_ticket,
            text: "My Tickets",
            backgroundColor: kBlue100,
          ),
        ],
      ),
    );
  }
}
