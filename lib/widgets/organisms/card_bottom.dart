import 'package:flutter/material.dart';
import 'package:spacia/widgets/molecules/available_chip.dart';
import 'package:spacia/widgets/molecules/unavailable_chip.dart';
import 'package:spacia/app_style.dart';

class CardBottom extends StatelessWidget {
  const CardBottom({super.key, required this.status, required this.isMine, required this.inputText});

  final bool status;
  final bool isMine;
  final int inputText;

  @override
  Widget build(BuildContext context) {
    // Widget content = const UnavailableChip();

    return status
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvailableChip(
                isMine: isMine,
                inputText: inputText,
              ),
              Text(
                "\$1.2 M",
                style: poppinsSemiBold.copyWith(
                  fontSize: 28,
                  color: kPrimary,
                ),
              ),
            ],
          )
        : const Row(
            children: [
              UnavailableChip(),
            ],
          );
  }
}
