// This file is created for setting theme for the app, 
// it includes app's light/dark backgroud theme data

import 'package:flutter/material.dart';
import 'package:spotifyclone/core/configs/theme/app_colors.dart';

class AppTheme {
  // themes are defined in app_color.dart
  // setting app theme(light theme)
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    fontFamily: "Satoshi", // font defined from pubspec
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30)
        )
      ),
    ),
  );
  
  // setting app theme(dark theme)
   static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    brightness: Brightness.dark,
    fontFamily: "Satoshi", // font defined from pubspec
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30)
        )
      ),
    ),
  );
}
