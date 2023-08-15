// import 'package:flutter/material.dart';

class TicketModel {
  TicketModel({
    required this.fromMain,
    required this.fromSub,
    required this.fromDate,
    required this.toMain,
    required this.toSub,
    required this.toDate,
    required this.interchanges,
    required this.isSeatAvailable,
    required this.isMine,
    required this.inputText,
  });

  final String fromMain;
  final String fromSub;
  final String fromDate;
  final String toMain;
  final String toSub;
  final String toDate;
  final int interchanges;
  final int inputText;
  final bool isSeatAvailable;
  final bool isMine;
}
