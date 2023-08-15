import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:spacia/app_style.dart';
import 'package:spacia/screens/home.dart';
import 'package:spacia/screens/my_tickets.dart';
import 'package:spacia/screens/schedules.dart';
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
  void initState() {
    super.initState();
    _setHomeScreen();
  }

  void _setHomeScreen() {
    setState(() {
      content = const HomePage();
    });
  }

  void _setShedulesScreen() {
    setState(() {
      content = const SchedulesScreen();
    });
  }

  void _setMyTicketsScreen() {
    setState(() {
      content = const MyTicketsScreen();
    });
  }

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
                decoration: const BoxDecoration(color: kContainer),
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
            onPressed: _setHomeScreen,
            icon: Icons.home,
            text: "Home",
            backgroundColor: kBlue100,
          ),
          GButton(
            onPressed: _setShedulesScreen,
            icon: Icons.calendar_month_rounded,
            text: "Schedule",
            backgroundColor: kBlue100,
          ),
          GButton(
            onPressed: _setMyTicketsScreen,
            icon: Icons.airplane_ticket,
            text: "My Tickets",
            backgroundColor: kBlue100,
          ),
        ],
      ),
    );
  }
}