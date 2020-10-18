import 'package:carbon12/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static ThemeData get lightTheme1 => ThemeData(
        primaryColor: CustomColors.kLight1,
        brightness: Brightness.light,
        accentColor: CustomColors.kAccent,
        textTheme: TextTheme(
          headline1: GoogleFonts.raleway(fontSize: 28, fontWeight: FontWeight.w700, color: CustomColors.kDark1),
          headline2: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w500, color: CustomColors.kDark1),
          bodyText1: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w400, color: CustomColors.kDark1),
          bodyText2: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.w400, color: CustomColors.kDark1),
        ),
      );

  static ThemeData get lightTheme2 => ThemeData(
        primaryColor: CustomColors.kLight2,
        brightness: Brightness.light,
        accentColor: CustomColors.kAccent,
        textTheme: TextTheme(
          headline1: GoogleFonts.raleway(fontSize: 28, fontWeight: FontWeight.w700, color: CustomColors.kDark1),
          headline2: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w500, color: CustomColors.kDark1),
          bodyText1: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w400, color: CustomColors.kDark1),
          bodyText2: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.w400, color: CustomColors.kDark1),
        ),
      );

  static ThemeData get darkTheme1 => ThemeData(
        primaryColor: CustomColors.kDark1,
        brightness: Brightness.dark,
        accentColor: CustomColors.kAccent,
        textTheme: TextTheme(
          headline1: GoogleFonts.raleway(fontSize: 28, fontWeight: FontWeight.w700, color: CustomColors.kLight1),
          headline2: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w500, color: CustomColors.kLight1),
          bodyText1: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w400, color: CustomColors.kLight1),
          bodyText2: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.w400, color: CustomColors.kLight1),
        ),
      );

  static ThemeData get darkTheme2 => ThemeData(
        primaryColor: CustomColors.kDark2,
        brightness: Brightness.dark,
        accentColor: CustomColors.kAccent,
        textTheme: TextTheme(
          headline1: GoogleFonts.raleway(fontSize: 28, fontWeight: FontWeight.w700, color: CustomColors.kLight1),
          headline2: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w500, color: CustomColors.kLight1),
          bodyText1: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w400, color: CustomColors.kLight1),
          bodyText2: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.w400, color: CustomColors.kLight1),
        ),
      );
}
