import 'package:flutter/material.dart';
import 'package:flutter_starter/src/utils/constants/colors.dart';

ThemeData dark = ThemeData(
    fontFamily: 'Roboto',
    primaryColor: AppColors.primary,
    secondaryHeaderColor: AppColors.secondaryDark,
    disabledColor: AppColors.disabledDark,
    backgroundColor: AppColors.backgroundDark,
    errorColor: AppColors.errorDark,
    brightness: Brightness.dark,
    hintColor: AppColors.hintDark,
    cardColor: AppColors.black,
    colorScheme: ColorScheme.dark(
        primary: AppColors.colorSchemeDark,
        secondary: AppColors.colorSchemeDark),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: AppColors.colorSchemeDark)));
