import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kBlack = Color(0xff000000);
const Color kBlack900 = Color(0xff1e1e1e);
const Color kBlack350 = Color(0xff747474);
const Color kBlack200 = Color(0xffA6A6A6);

const Color kTextBoxBorder = Color(0xffF1F4FF);
const Color kTextField = Color(0xffF8F9FD);
const Color kOnTextField = Color(0xff575757);

const Color kWhite = Color(0xffffffff);

const Color kPrimary = Color(0xff101C60);

const kGrad2 = LinearGradient(colors: [Color(0xff78C9FE), Color(0xffAE71FE)], begin: Alignment.topLeft, end: Alignment.bottomRight);

final btnStyle = TextButton.styleFrom(
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

final txtBox = InputDecoration(
  floatingLabelBehavior: FloatingLabelBehavior.never,
  border: const OutlineInputBorder(),
  alignLabelWithHint: true,
  prefixIconColor: kBlack200,
  // focusedErrorBorder: OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(15),
  //   borderSide: const BorderSide(color: Color(0xffd9d9d9), width: 2),
  // ),
  // errorBorder: OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(15),
  //   borderSide: const BorderSide(color: Color(0xffd9d9d9), width: 2),
  // ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: kTextBoxBorder, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: kPrimary, width: 2),
  ),
  filled: true,
  fillColor: kTextField,
  contentPadding: const EdgeInsets.all(16),
);
