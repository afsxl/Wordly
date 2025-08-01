import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStateColor.resolveWith((states) => Colors.white),
    ),
  ),
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.delius(
      color: Colors.white,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    titleTextStyle: GoogleFonts.delius(
      color: Colors.white,
    ),
  ),
);
