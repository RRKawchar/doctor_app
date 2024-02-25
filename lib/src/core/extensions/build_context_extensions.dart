import 'dart:math';
import 'package:doctor_app/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  void unFocusKeyboard() => FocusScope.of(this).unfocus();

  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;

  Size get screenSize => MediaQuery.of(this).size;

  double get minScreenSize =>min(MediaQuery.of(this).size.height, MediaQuery.of(this).size.width);
  double get maxScreenSize =>min(MediaQuery.of(this).size.height, MediaQuery.of(this).size.width);

  TextTheme get appTextTheme => Theme.of(this).textTheme;

  TextStyle? get buttonTextStyle =>
      Theme.of(this).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: kWhite,
            fontSize: 15,
          );

  TextStyle? get outlinedButtonTextStyle =>
      Theme.of(this).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
            fontSize: 14,
          );
}
