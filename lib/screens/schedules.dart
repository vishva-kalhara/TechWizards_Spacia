import 'package:flutter/material.dart';
import 'package:spacia/widgets/templates/ticket.dart';
import 'package:spacia/models/ticket_model.dart';
import 'package:spacia/routes/routes.dart' as route;

class SchedulesScreen extends StatelessWidget {
  SchedulesScreen({super.key});

  final List<TicketModel> _ticketData = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, route.travelDetails);
            },
            child: const Ticket(
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
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, route.travelDetails);
            },
            child: const Ticket(
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
          ),
        ],
      ),
    );
  }
}
