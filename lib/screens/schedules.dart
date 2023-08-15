import 'package:flutter/material.dart';
import 'package:spacia/widgets/templates/ticket.dart';
// import 'package:spacia/models/ticket_model.dart';
import 'package:spacia/routes/routes.dart' as route;

class SchedulesScreen extends StatelessWidget {
  SchedulesScreen({super.key});

  // final List<TicketModel> _ticketData = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 8),
          itemCount: 5,
          itemBuilder: (context, index) {
            return InkWell(
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
            );
          }),
    );
  }
}
