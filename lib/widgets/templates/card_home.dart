import 'package:flutter/material.dart';
import 'package:spacia/app_style.dart';
import 'package:spacia/widgets/organisms/card_top.dart';

class CardHome extends StatelessWidget {
  const CardHome({super.key,
  
      required this.fromMain,
    required this.fromSub,
    required this.fromDate,
    required this.toMain,
    required this.toSub,
    required this.toDate,
    required this.interchanges,
  });

  final String fromMain;
  final String fromSub;
  final String fromDate;
  final String toMain;
  final String toSub;
  final String toDate;
  final int interchanges;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: kBlack100, width: 1.5),
      ),
      padding: const EdgeInsets.all(24),
      child:  CardTop(
        fromMain: fromMain,
        fromSub: fromSub,
        fromDate: fromDate,
        toMain: toMain,
        toSub: toSub,
        toDate: toDate,
        interchanges: interchanges,
      ),
    );
  }
}
