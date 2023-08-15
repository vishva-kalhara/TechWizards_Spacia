import 'package:flutter/material.dart';
import 'package:spacia/app_style.dart';

class AvailableChip extends StatelessWidget {
  const AvailableChip({super.key, required this.inputText, required this.isMine});

  final int inputText;
  final bool isMine;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kGreen200.withOpacity(.5), borderRadius: BorderRadius.circular(7)),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
      child: Text( isMine? "Seat No: $inputText" :
        "$inputText Seats Available" ,
        style: poppinsMedium.copyWith(fontSize: 12, color: kGreen500),
      ),
    );
  }
}
