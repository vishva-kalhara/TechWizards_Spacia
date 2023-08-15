import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacia/widgets/organisms/card_bottom.dart';
import 'package:spacia/widgets/organisms/card_top.dart';

class Ticket extends StatelessWidget {
  const Ticket({
    super.key,
    required this.fromMain,
    required this.fromSub,
    required this.fromDate,
    required this.toMain,
    required this.toSub,
    required this.toDate,
    required this.interchanges,
    required this.isSeatAvailable,
    required this.isMine,
    required this.inputText
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Stack(
        children: [
          Positioned(
            // top: 0,
            // bottom: 0,
            // left: 0,
            // right: 0,
            child: SvgPicture.asset(
              "assets/ticket_back.svg",
              width: 370,
            ),
          ),
          Positioned(
            top: 24,
            // bottom: 0,
            left: 24,
            right: 24,
            child: CardTop(
              fromMain: fromMain,
              fromSub: fromSub,
              fromDate: fromDate,
              toMain: toMain,
              toSub: toSub,
              toDate: toDate,
              interchanges: interchanges,
            ),
          ),
          Positioned(
            // top: 24,
            bottom: 18,
            left: 18,
            right: 24,
            child: CardBottom(
              isMine: isMine,
              status: isSeatAvailable,
              inputText: inputText,
            ),
          ),
        ],
      ),
    );
  }
}
