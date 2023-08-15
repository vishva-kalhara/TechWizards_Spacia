import 'package:spacia/models/ticket_model.dart';
// import 'package:flutter/material.dart';

final dummyData = [
  TicketModel(
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
  TicketModel(
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
  )
];
