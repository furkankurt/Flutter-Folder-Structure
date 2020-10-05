import 'dart:io';

import 'package:flutter/material.dart';
import 'package:folder_structure/src/config/theme/app_colors.dart';

// main.dart dosyasinda kod kalabaligindan kurtulmak icin kendi olusturdugumuz temayi ayri bir
// dosya ve klasorde tutuyoruz.

class CustomTheme {
  static ThemeData theme = ThemeData(
    primaryColor: AppColors.mainColor,
    brightness: Platform.isIOS ? Brightness.light : Brightness.dark,
    appBarTheme: AppBarTheme(
      color: AppColors.mainColor,
      iconTheme: IconThemeData(color: AppColors.mainColor),
      actionsIconTheme: IconThemeData(color: AppColors.mainColor),
    ),
    focusColor: AppColors.mainColor,
    hintColor: AppColors.mainColor,
    scaffoldBackgroundColor: AppColors.secondGreyBlueColor,
    indicatorColor: AppColors.mainColor,
    cursorColor: AppColors.primaryBlueColor,
    accentColor: AppColors.mainColor,
    buttonColor: AppColors.blackColor,
    textTheme: TextTheme(
      headline1: TextStyle(color: AppColors.mainColor, fontSize: 16, letterSpacing: 1.5),
      headline2: TextStyle(color: AppColors.mainColor, fontWeight: FontWeight.w500, fontSize: 18),
      headline3: TextStyle(color: AppColors.mainColor, fontWeight: FontWeight.w600, fontSize: 18),
    ),
  );
}
