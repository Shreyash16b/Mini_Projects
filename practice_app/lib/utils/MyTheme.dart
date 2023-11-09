import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext) => ThemeData(
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: darkBluish),
      primarySwatch: Colors.deepPurple,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.white,
          onPrimary: darkBluish,
          secondary: Colors.white,
          onSecondary: creamColor,
          error: Colors.black,
          onError: Colors.white,
          background: darkBluish,
          onBackground: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black),
      cardColor: Colors.white,
      buttonTheme: ButtonThemeData(buttonColor: darkBluish),
      canvasColor: creamColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
          )));

  static ThemeData darktheme(BuildContext) => ThemeData(
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: lightBlueColor),
      primarySwatch: Colors.deepPurple,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: lightBlueColor,
          onPrimary: Colors.white,
          secondary: darkCreamColor,
          onSecondary: Colors.white,
          error: Colors.black,
          onError: Colors.white,
          background: lightBlueColor,
          onBackground: Colors.white,
          surface: Colors.black,
          onSurface: Colors.white),
      cardColor: Colors.black,
      buttonTheme: ButtonThemeData(buttonColor: lightBlueColor),
      canvasColor: darkCreamColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.black,
          )));

  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray800;
  static Color lightBlueColor = Vx.indigo500;
  static Color darkBluish = const Color(0xff403b58);
}
