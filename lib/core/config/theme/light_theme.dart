import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skill_swap_app/core/config/constants/app_sizes.dart';
import 'package:skill_swap_app/core/config/constants/color_manager.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  useMaterial3: true,
  fontFamily: AppFontFamily.montserratArabicFont,
  colorScheme: ColorScheme.light(primary: Colors.black),
  appBarTheme: AppBarTheme(
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: ColorManager.backgroundPrimary,
      systemNavigationBarColor: ColorManager.primaryBlueDark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorManager.primaryBlue,
      elevation: 0,
      padding: EdgeInsets.zero,
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.white,
      ),
      minimumSize: Size(double.infinity, 46),
      maximumSize: Size(double.infinity, 46),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(BorderRadiusSize.borderRadius),
        ),
      ),
    ),
  ),

  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: ColorManager.primaryBlueMuted,
  ),
  dividerTheme: DividerThemeData(color: Colors.grey.shade300),

  inputDecorationTheme: InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    hintStyle: TextStyle(
      color: ColorManager.textPrimary,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    errorStyle: TextStyle(
      color: ColorManager.redColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(BorderRadiusSize.borderRadius),
      ),
      borderSide: BorderSide(color: ColorManager.borderGrey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(BorderRadiusSize.borderRadius),
      ),
      borderSide: BorderSide(color: ColorManager.borderGrey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(BorderRadiusSize.borderRadius),
      ),
      borderSide: BorderSide(color: ColorManager.primaryBlue),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(BorderRadiusSize.borderRadius),
      ),
      borderSide: BorderSide(color: ColorManager.redColor),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(BorderRadiusSize.borderRadius),
      ),
      borderSide: BorderSide(color: ColorManager.primaryBlue),
    ),
  ),

  textTheme: TextTheme(
    // Title Text Bold
    displayLarge: TextStyle(
      fontSize: 34,
      height: 48 / 34,
      fontWeight: FontWeight.w700,
    ),

    // XXXL Bold
    displayMedium: TextStyle(
      fontSize: 28,
      height: 39 / 28,
      fontWeight: FontWeight.w700,
    ),

    // XXXL Regular
    displaySmall: TextStyle(
      fontSize: 28,
      height: 39 / 28,
      fontWeight: FontWeight.w400,
    ),

    // XXL Bold
    headlineLarge: TextStyle(
      fontSize: 24,
      height: 34 / 24,
      fontWeight: FontWeight.w700,
    ),

    // XXL Regular
    headlineMedium: TextStyle(
      fontSize: 24,
      height: 34 / 24,
      fontWeight: FontWeight.w400,
    ),

    // XL Bold
    headlineSmall: TextStyle(
      fontSize: 22,
      height: 31 / 22,
      fontWeight: FontWeight.w700,
    ),

    // XL Regular
    titleLarge: TextStyle(
      fontSize: 22,
      height: 31 / 22,
      fontWeight: FontWeight.w400,
    ),

    // XL Light
    titleMedium: TextStyle(
      fontSize: 22,
      height: 31 / 22,
      fontWeight: FontWeight.w300,
    ),

    // ML Bold
    titleSmall: TextStyle(
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w700,
    ),

    // ML Regular
    bodyLarge: TextStyle(
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w400,
    ),

    // ML Light
    bodyMedium: TextStyle(
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w300,
    ),

    // L Bold
    bodySmall: TextStyle(
      fontSize: 18,
      height: 28 / 18,
      fontWeight: FontWeight.w400,
    ),

    // M Regular
    labelLarge: TextStyle(
      fontSize: 16,
      height: 22 / 16,
      fontWeight: FontWeight.w400,
    ),

    // S Regular
    labelMedium: TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w400,
      color: ColorManager.textPrimary,
    ),

    // XS Regular
    labelSmall: TextStyle(
      fontSize: 12,
      height: 16 / 12,
      fontWeight: FontWeight.w400,
    ),
  ),
);

class AppFontFamily {
  AppFontFamily._();
  static const String montserratArabicFont = 'MontserratArabic';
}
