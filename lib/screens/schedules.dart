import 'package:flutter/material.dart';
import 'package:spacia/widgets/templates/ticket.dart';

class SchedulesScreen extends StatelessWidget {
  const SchedulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Ticket(
            fromMain: "US",
            fromSub: "New York",
            fromDate: "05-Sep",
            toMain: "MRS",
            toSub: "HQ",
            toDate: "05-Jan",
            interchanges: 4,
            isSeatAvailable: false,
            isMine: false,
            inputText: 3,
          ),
          Ticket(
            fromMain: "LK",
            fromSub: "Colombo",
            fromDate: "30-Aug",
            toMain: "MRS",
            toSub: "HQ",
            toDate: "30-Dec",
            interchanges: 5,
            isSeatAvailable: true,
            isMine: false,
            inputText: 2,
          ),
        ],
      ),
    );
  }
}
