import 'package:doctor_app/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: bgColor,
    useMaterial3: true,
    buttonTheme: ButtonThemeData(
      buttonColor: kPrimaryColor,
      textTheme: ButtonTextTheme.normal,
      colorScheme: ColorScheme.fromSeed(seedColor: kWhite),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: kWhite,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: kBlack,
        fontSize: 20,
      ),
    ),

    hintColor: kBlack,
    textTheme: const TextTheme(
      bodyMedium:TextStyle(
      fontSize: 20,
        fontWeight: FontWeight.w600
      )
    )
  );
}
