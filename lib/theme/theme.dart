import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Nunito',
  primaryColor: Colors.grey,
  primaryColorBrightness: Brightness.light,
  dividerColor: const Color(0x00FAFAFA),
  unselectedWidgetColor: Colors.black,
  toggleableActiveColor: const Color(0xFF09BF30),
  colorScheme: ColorScheme.light(
      primary: Colors.black,
      // brightness: Colors.white,
      primaryVariant: Colors.white,
      secondaryVariant: Colors.grey[100],
      onSecondary: const Color(0xFF4A4A4A),
      onPrimary: Colors.white),
  buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.normal),
  iconTheme: const IconThemeData(color: Color(0xFF333333)),
  appBarTheme: const AppBarTheme(elevation: 0),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: Color(0xFF09BF30)),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Color(0xFFD2D1D1)),
    bodyText2: TextStyle(color: Colors.black),
    headline5: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Nunito',
  primaryColorBrightness: Brightness.dark,
  unselectedWidgetColor: Colors.white,
  toggleableActiveColor: const Color(0xFF09BF30),
  colorScheme: const ColorScheme.dark(
      primary: Colors.white,
      primaryVariant: Color(0xFF505050),
      secondaryVariant: Color(0xFF353535),
      onSecondary: Color(0xFF4A4A4A),
      onPrimary: Colors.black),
  buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.normal),
  iconTheme: const IconThemeData(color: Colors.white),
  appBarTheme: const AppBarTheme(elevation: 0),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: Color(0xFF09BF30)),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Color(0xFF4A4A4A)),
    bodyText2: TextStyle(color: Colors.white),
    headline5: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
  ),
);
