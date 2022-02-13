import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstantsColors {
  var scaffoldBackgroundColor = HexColor("#E9EFFB");
  var primaryRed = HexColor("#FD7569");
  var textColor = HexColor("#ADB1B6");
}

textStyle(var color, var size, var weight,
    [var decoration, var deccolor, var decstyle]) {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
      decoration: decoration,
      decorationColor: deccolor,
      decorationStyle: decstyle,
    ),
  );
}
