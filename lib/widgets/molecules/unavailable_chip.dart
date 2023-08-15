import 'package:flutter/material.dart';
import 'package:spacia/app_style.dart';

class UnavailableChip extends StatelessWidget {
  const UnavailableChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kBlack100, borderRadius: BorderRadius.circular(7)),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
      child: Text(
        "All Seats Reserved",
        style: poppinsMedium.copyWith(fontSize: 12, color: kBlack350),
      ),
    );
  }
}
