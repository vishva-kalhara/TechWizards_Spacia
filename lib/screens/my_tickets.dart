import 'package:flutter/material.dart';
import 'package:spacia/widgets/templates/ticket.dart';

class MyTicketsScreen extends StatelessWidget {
  const MyTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Ticket(
            fromMain: "LK",
            fromSub: "Colombo",
            fromDate: "30-Aug",
            toMain: "MRS",
            toSub: "HQ",
            toDate: "30-Dec",
            interchanges: 5,
            isSeatAvailable: true,
            isMine: true,
            inputText: 1,
          ),
        ],
      ),
    );
  }
}
