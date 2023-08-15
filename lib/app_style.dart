import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kBlack = Color(0xff000000);
const Color kBlack900 = Color(0xff1e1e1e);
const Color kBlack350 = Color(0xff747474);
const Color kBlack200 = Color(0xffA6A6A6);
const Color kBlack100 = Color(0xffE4E4E4);

const Color kTextBoxBorder = Color(0xffF1F4FF);
const Color kTextField = Color(0xffF8F9FD);
const Color kOnTextField = Color(0xff575757);

const Color kContainer = Color(0xffF4F4F5);
const Color kWhite = Color(0xffffffff);

const Color kPrimary = Color(0xff101C60);
const Color kBlue500 = Color(0xff5C6EBE);
const Color kBlue300 = Color(0xff959FCD);
const Color kBlue200 = Color(0xffD3D9F4);
const Color kBlue100 = Color(0xffD3D9F4);

const Color kGreen200 = Color(0xffC7F5D4);
const Color kGreen500 = Color(0xff4EB069);

const Color kGradBorder = Color(0xffB0AEFE);

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
  fontWeight: FontWeight.w600,
);

final poppinsMedium = GoogleFonts.poppins(
  color: kWhite,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

final poppinsRegular = GoogleFonts.poppins(
  color: kWhite,
  fontSize: 16,
  fontWeight: FontWeight.w400,
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

