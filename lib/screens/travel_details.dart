import 'package:flutter/material.dart';
import 'package:spacia/app_style.dart';
import 'package:spacia/size_config.dart';

import 'package:spacia/widgets/templates/ticket.dart';
import 'package:spacia/widgets/templates/top_nav.dart';

class TraveldetailsScreen extends StatelessWidget {
  const TraveldetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kContainer,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TopNavBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Ticket(
                      fromMain: "US",
                      fromSub: "New York",
                      fromDate: "05-Sep",
                      toMain: "MRS",
                      toSub: "HQ",
                      toDate: "05-Jan",
                      interchanges: 4,
                      isSeatAvailable: true,
                      isMine: false,
                      inputText: 3,
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical! * 2),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: btnStyle.copyWith(
                          padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 17),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Reserve Your Seat Now",
                          style: poppinsSemiBold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
