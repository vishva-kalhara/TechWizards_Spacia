import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kBlack = Color(0xff000000);
const Color kBlack900 = Color(0xff1e1e1e);
const Color kBlack350 = Color(0xff747474);

const Color kTextBoxBorder = Color(0xffF1F4FF);
const Color kWhite = Color(0xffffffff);

const Color kPrimary = Color(0xff101C60);

const kGrad2 = LinearGradient(colors: [Color(0xff78C9FE), Color(0xffAE71FE)]);

final btnStyle = TextButton.styleFrom(
  padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 64),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  backgroundColor: kPrimary,
);

final poppinsSemiBold = GoogleFonts.poppins(
  color: kWhite,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

final poppinsRegular = GoogleFonts.poppins(
  color: kWhite,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
