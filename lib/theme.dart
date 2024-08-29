import 'package:flutter/material.dart';
import 'package:riderapp/shared/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      // useMaterial3: false,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.secondary,
      textTheme: TextTheme(
        titleLarge: GoogleFonts.poppins(
          fontSize: 24,
          fontStyle: FontStyle.normal,
        ),
        headlineSmall: GoogleFonts.poppins(
          fontSize: 29,
          fontStyle: FontStyle.normal,
        ),
        headlineMedium: GoogleFonts.poppins(
          fontSize: 43,
          fontStyle: FontStyle.normal,
        ),
        bodySmall: GoogleFonts.poppins(
          fontSize: 13,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
        ),
        bodyLarge: GoogleFonts.poppins(
          fontSize: 12,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: 12,
          fontStyle: FontStyle.normal,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) => AppColors.secondary,
          ),
          padding: WidgetStateProperty.resolveWith(
            (states) => const EdgeInsets.symmetric(vertical: 15),
          ),
          textStyle: WidgetStateProperty.resolveWith(
            (states) => GoogleFonts.poppins(
              fontStyle: FontStyle.normal,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  static ButtonStyle transparentButton(BuildContext context) {
    return TextButtonTheme.of(context).style!.copyWith(
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) => AppColors.transparent,
          ),
        );
  }

  static ButtonStyle borderColoredButton(
    BuildContext context,
    Color color, [
    Color? borderColor,
    double? padding,
  ]) {
    return transparentButton(context).copyWith(
        shape: WidgetStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            side: BorderSide(color: borderColor ?? color),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) => color,
        ),
        overlayColor: WidgetStateProperty.resolveWith(
          (states) => (borderColor ?? color).withAlpha(32),
        ),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: padding ?? 0.0)));
  }

  /// Styles a button with the given [color] as background color.
  static ButtonStyle coloredButton(BuildContext context, Color color) {
    return TextButtonTheme.of(context).style!.copyWith(
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) => color,
          ),
          foregroundColor: WidgetStateProperty.resolveWith(
            (states) => AppColors.secondary,
          ),
          overlayColor: WidgetStateProperty.resolveWith(
            (states) => AppColors.secondary.withAlpha(32),
          ),
        );
  }
}
