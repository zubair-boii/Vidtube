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
    const borderRadius = 20.0;
    const elevatedButtonBorderRadius = 20.0;

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
            borderRadius: BorderRadius.circular(elevatedButtonBorderRadius),
          ),
          minimumSize: const Size(150.0, 50.0),
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        ),
      ),

      // Text Field
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryDark),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryDark),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryDark),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.errorDark),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.errorDark),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
      ),
    );
  }
}
