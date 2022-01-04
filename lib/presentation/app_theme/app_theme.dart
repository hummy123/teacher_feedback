import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = ThemeData(
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 16),
  )),
  textTheme: GoogleFonts.rubikTextTheme().copyWith(
    headline1: const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
    headline2: const TextStyle(
        fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
    headline3: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
    bodyText2: const TextStyle(fontSize: 18.0),
    button: const TextStyle(fontSize: 18.0),
    caption: const TextStyle(fontSize: 12.0),
  ),
);

const Color backgroundColour = Color(0xfffafafa);
