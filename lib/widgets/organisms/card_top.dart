import 'package:flutter/material.dart';
import 'package:spacia/app_style.dart';
import 'package:spacia/widgets/molecules/text_chip.dart';

class CardTop extends StatelessWidget {
  const CardTop({
    super.key,
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
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                fromSub,
                style: poppinsMedium.copyWith(
                  fontSize: 14,
                  color: kBlack350,
                ),
              ),
              Text(
                fromMain,
                style: poppinsSemiBold.copyWith(
                  fontSize: 24,
                  color: kPrimary,
                ),
              ),
              Text(
                fromDate,
                style: poppinsMedium.copyWith(
                  fontSize: 14,
                  color: kBlack350,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "2 Months",
                style: poppinsMedium.copyWith(
                  fontSize: 14,
                  color: kBlue300,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                width: 130,
                height: 2,
                decoration: const BoxDecoration(color: kBlue100),
              ),
              const SizedBox(height: 8),
              TextChip(
                interchanges: interchanges,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                toSub,
                style: poppinsSemiBold.copyWith(
                  fontSize: 14,
                  color: kBlack350,
                ),
              ),
              Text(
                toMain,
                style: poppinsSemiBold.copyWith(
                  fontSize: 24,
                  color: kPrimary,
                ),
              ),
              Text(
                toDate,
                style: poppinsMedium.copyWith(
                  fontSize: 14,
                  color: kBlack350,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
