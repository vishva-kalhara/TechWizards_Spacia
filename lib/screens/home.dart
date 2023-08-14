import 'package:flutter/material.dart';
import 'package:spacia/widgets/templates/search.dart';
import 'package:spacia/widgets/templates/top_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          TopNavBar(),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  SearchCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
