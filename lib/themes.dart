import 'package:carbon12/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static ThemeData get lightTheme1 => ThemeData(
        primaryColor: CustomColors.kLight1,
        primaryColorDark: CustomColors.kLight1Dark,
        primaryColorLight: CustomColors.kLight1Light,
        brightness: Brightness.light,
        accentColor: CustomColors.kAccent,
        textTheme: TextTheme(
          headline1: GoogleFonts.raleway(fontSize: 32, fontWeight: FontWeight.w700, color: CustomColors.kDark1),
          headline2: GoogleFonts.raleway(fontSize: 28, fontWeight: FontWeight.w500, color: CustomColors.kDark1),
          bodyText1: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w400, color: CustomColors.kDark1),
          bodyText2: GoogleFonts.raleway(fontSize: 22, fontWeight: FontWeight.w400, color: CustomColors.kDark1),
        ),
      );

  static ThemeData get lightTheme2 => ThemeData(
        primaryColor: CustomColors.kLight2,
        primaryColorDark: CustomColors.kLight2Dark,
        primaryColorLight: CustomColors.kLight2Light,
        brightness: Brightness.light,
        accentColor: CustomColors.kAccent,
        textTheme: TextTheme(
          headline1: GoogleFonts.raleway(fontSize: 32, fontWeight: FontWeight.w700, color: CustomColors.kDark1),
          headline2: GoogleFonts.raleway(fontSize: 28, fontWeight: FontWeight.w500, color: CustomColors.kDark1),
          bodyText1: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w400, color: CustomColors.kDark1),
          bodyText2: GoogleFonts.raleway(fontSize: 22, fontWeight: FontWeight.w400, color: CustomColors.kDark1),
        ),
      );

  static ThemeData get darkTheme1 => ThemeData(
        primaryColor: CustomColors.kDark1,
        primaryColorDark: CustomColors.kDark1Dark,
        primaryColorLight: CustomColors.kDark1Light,
        brightness: Brightness.dark,
        accentColor: CustomColors.kAccent,
        textTheme: TextTheme(
          headline1: GoogleFonts.raleway(fontSize: 32, fontWeight: FontWeight.w700, color: CustomColors.kLight1),
          headline2: GoogleFonts.raleway(fontSize: 28, fontWeight: FontWeight.w500, color: CustomColors.kLight1),
          bodyText1: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w400, color: CustomColors.kLight1),
          bodyText2: GoogleFonts.raleway(fontSize: 22, fontWeight: FontWeight.w400, color: CustomColors.kLight1),
        ),
      );

  static ThemeData get darkTheme2 => ThemeData(
        primaryColor: CustomColors.kDark2,
        primaryColorDark: CustomColors.kDark2Dark,
        primaryColorLight: CustomColors.kDark2Light,
        brightness: Brightness.dark,
        accentColor: CustomColors.kAccent,
        textTheme: TextTheme(
          headline1: GoogleFonts.raleway(fontSize: 32, fontWeight: FontWeight.w700, color: CustomColors.kLight1),
          headline2: GoogleFonts.raleway(fontSize: 28, fontWeight: FontWeight.w500, color: CustomColors.kLight1),
          bodyText1: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w400, color: CustomColors.kLight1),
          bodyText2: GoogleFonts.raleway(fontSize: 22, fontWeight: FontWeight.w400, color: CustomColors.kLight1),
        ),
      );
}
