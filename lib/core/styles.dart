import 'package:flutter/material.dart';

/// Utility class that helps to access the colors used in the good2go app.
class AppColors {
  AppColors._();

  ///slateGray
  final Color slateGray = const Color(0xFF30454F);

  ///
  final Color chatBlue = const Color(0xFF165795);

  ///deep blue
  final Color deepBlue = const Color(0xFF0284C7);

  ///blueGrayMuted color
  final Color blueGrayMuted = const Color(0xffD8ECFF);

  ///paleBlue color
  final Color paleBlue = const Color(0xff607C89);

  /// Bacl Color
  final Color black = const Color(0xff000000);

  /// dark red color
  final Color darkRed = const Color(0xff8F0909);

  /// dark red color
  final Color alertRed = Colors.red;

  /// blue color used in main components of the  App.
  final Color primary = const Color(0xff03284C);

  /// second color used in secondary components.
  final Color secondary = const Color(0xffffffff);

  /// dark green color .
  final Color darkGreen = const Color(0xff016019);

  /// light green color .
  final Color lightGreen = const Color(0xFFE8FFEE);

  /// light orange color .
  final Color lightOrange = const Color(0xFFFFEEE6);

  /// l orange color .
  final Color brownish = const Color(0xFF973609);

  /// Green color used for positive action components.
  final Color green = const Color(0xff00AE6D);

  /// Grey color mainly used as a [Ink] color on tappable areas.
  final Color grey = const Color(0xffD2D2D2);

  /// Dark grey color used on inative icons.
  final Color darkGrey = const Color(0xff7A8388);

  /// Light grey color.
  final Color lightGrey = const Color(0xffF1F1F1);

  /// Purple color.
  final Color purple = const Color(0xffA079EC);

  /// Orange Color.
  final Color orange = const Color(0xffF79D15);

  ///accent white
  final Color accentWhite = const Color(0xffF8FCFF);

  ///accent blue
  final Color accentBlue = const Color(0xffD8ECFF);

  ///accent grey
  final Color accent = const Color(0xff607C89);

  final Color accentBlack = const Color(0xFF30454F);
  //
  final Color goldYellow = const Color(0xFFB07F00);
}

/// A utility class that holds all global styling properties used in the app.
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
  static const double spaceDefault = 14;

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
