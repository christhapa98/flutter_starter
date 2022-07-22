import 'package:flutter/material.dart';
import 'package:flutter_starter/src/utils/constants/colors.dart';

ThemeData light = ThemeData(
  fontFamily: 'Roboto',
  primaryColor: AppColors.primary,
  secondaryHeaderColor: AppColors.secondary,
  disabledColor: AppColors.disabled,
  backgroundColor: AppColors.background,
  errorColor: AppColors.error,
  brightness: Brightness.light,
  hintColor: AppColors.hint,
  cardColor: AppColors.white,
  colorScheme: ColorScheme.light(
      primary: AppColors.primary, secondary: AppColors.primary),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: AppColors.primary)),
);
