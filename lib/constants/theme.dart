import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

ThemeData getTheme()
{
  return ThemeData(
    primaryColor: AppColors.primary,
    primarySwatch: Colors.indigo,

    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.w700,

        color: AppColors.background,

      ),
      displayMedium: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.background,
          letterSpacing: .4,
      ),
      displaySmall: GoogleFonts.lato(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 0.09,
        color: AppColors.background,
      ),
    ),
    elevatedButtonTheme:ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    )

  );
}

