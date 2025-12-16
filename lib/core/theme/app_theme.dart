import 'package:flutter/material.dart';
import 'package:flutter_vidtube/core/colors/app_colors.dart';
import 'package:flutter_vidtube/core/constants/app_constants.dart';

class AppTheme {
  const AppTheme();

  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: Constants.appFontHelvetica,
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: AppColor.bottomNavigationBarLight,
      ),
      colorScheme: const ColorScheme(
        surface: AppColor.backgroundColorLight,
        onSurface: AppColor.onBackgroundColorLight,
        brightness: Brightness.light,
        primary: AppColor.primaryLight,
        onPrimary: AppColor.onPrimaryLight,
        secondary: AppColor.secondaryLight,
        onSecondary: AppColor.onSecondaryLight,
        error: AppColor.errorLight,
        onError: AppColor.onErrorLight,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,

      fontFamily: Constants.appFontHelvetica,

      // Navigation Bar
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: AppColor.bottomNavigationBarDark,
      ),

      // Color Scheme
      colorScheme: const ColorScheme(
        surface: AppColor.backgroundColorDark,
        onSurface: AppColor.onBackgroundColorDark,
        brightness: Brightness.dark,
        primary: AppColor.primaryDark,
        onPrimary: AppColor.onPrimaryDark,
        secondary: AppColor.secondaryDark,
        onSecondary: AppColor.onSecondaryDark,
        error: AppColor.errorDark,
        onError: AppColor.onErrorDark,
      ),

      // Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryDark,
          foregroundColor: AppColor.onPrimaryDark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),

      // Text Field
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryDark),
          borderRadius: BorderRadius.circular(25.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryDark),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.errorDark),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.errorDark),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryDark),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryDark),
        ),
        errorStyle: TextStyle(color: AppColor.errorDark),
        labelStyle: TextStyle(color: AppColor.primaryDark),
        hintStyle: TextStyle(color: AppColor.primaryDark),
      ),
    );
  }
}
