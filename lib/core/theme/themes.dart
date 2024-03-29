import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';

class MyThemes {
  static final lightTheme = ThemeData(
    backgroundColor: cWhiteColor,
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: cTextColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        color: cTextColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        color: Color(0xff3E423F),
        fontWeight: FontWeight.w900,
        fontSize: 20,
      ),
      headline4: TextStyle(
        color: cTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      subtitle1: TextStyle(
        color: cTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      subtitle2: TextStyle(
        color: cTextColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        color: cWhiteColor,
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
      bodyText2: TextStyle(
        color: Color(0xff7C7C7C),
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: cMainColor,
      onBackground: cWhiteColor,
      onError: Colors.red,
      brightness: Brightness.light,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    scaffoldBackgroundColor: cWhiteColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: cTextColor,
      ),
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    shadowColor: Colors.black,
    fontFamily: "Gilroy",
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: cWhiteColor,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: cMainColor,
      ),
      selectedItemColor: cMainColor,
      unselectedItemColor: Colors.black,
      selectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w900, fontSize: 14.0),
      unselectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w900, fontSize: 13.0),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      hintStyle: const TextStyle(
        color: Color(0xff7C7C7C),
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      foregroundColor: cMainColor,
      textStyle: const TextStyle(
        color: cMainColor,
        fontSize: 16,
        fontWeight: FontWeight.w900,
      ),
    )),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: cMainColor,
        fixedSize: const Size(double.infinity, 67),
        padding: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: cWhiteColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        color: cWhiteColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        color: Color(0xff3E423F),
        fontWeight: FontWeight.w900,
        fontSize: 20,
      ),
      headline4: TextStyle(
        color: cWhiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      subtitle1: TextStyle(
        color: cWhiteColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      subtitle2: TextStyle(
        color: cWhiteColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        color: cWhiteColor,
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
      bodyText2: TextStyle(
        color: Color(0xff7C7C7C),
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
    ),
    backgroundColor: Color(0xff232323),
    colorScheme: const ColorScheme.dark(
      primary: cMainColor,
      onBackground: Color(0xff232323),
      background: Color(0xff232323),
      onError: Colors.red,
      brightness: Brightness.dark,
    ),
    iconTheme: const IconThemeData(
      color: cWhiteColor,
    ),
    scaffoldBackgroundColor: Color(0xff232323),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: cWhiteColor,
      ),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: cWhiteColor,
      ),
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    shadowColor: Colors.black,
    fontFamily: "Gilroy",
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff232323),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: cMainColor,
      ),
      selectedItemColor: cMainColor,
      unselectedItemColor: cWhiteColor,
      selectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w900, fontSize: 14.0),
      unselectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w900, fontSize: 13.0),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      hintStyle: const TextStyle(
        color: Color(0xff7C7C7C),
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      foregroundColor: cMainColor,
      textStyle: const TextStyle(
        color: cWhiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w900,
      ),
    )),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: cMainColor,
        fixedSize: const Size(double.infinity, 67),
        padding: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}
