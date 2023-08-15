import 'package:flutter/material.dart';
import 'package:spacia/app_style.dart';

class TextChip extends StatelessWidget {
  const TextChip({super.key, required this.interchanges});

  final int interchanges;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kBlue200.withOpacity(.5), borderRadius: BorderRadius.circular(7)),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
      child: Text(
        "$interchanges Interchanges",
        style: poppinsMedium.copyWith(fontSize: 12, color: kBlue500),
      ),
    );
  }
}
