import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xff008955);
  static const Color secondary = Color(0xffffffff);
  static const Color afternoonGrey = Color(0xff414141);
  static const Color shadeOFGrey = Color(0xffA0A0A0);
  static const Color transparent = Colors.transparent;
}

class AppStyles {
  AppStyles._();

  /// An object that holds all the colors used in the app.
  static AppColors get colors => AppColors._();

  /// Global border radius.
  static const double radius = 7;

  /// Smallest padding/margin value.
  static const double spaceTiny = 8;

  /// Small padding/margin value.
  static const double spaceSmall = 12;

  /// Main padding/margin value.
  static const double spaceDefault = 16;

  /// Medium padding/margin value.
  static const double spaceMedium = 24;

  /// A large padding/margin value.
  static const double spaceLarge = 32;

  /// A Huge padding/margin value.
  static const double spaceHuge = 36;

  /// Enormous padding/margin value.
  static const double spaceEnormous = 40;

  ///inputSize
  static const double textinputSize = 60;

  /// font body.
  static const double fontBody = 14;

  ///inputSize
  static const double fontheadline = 20;
}
