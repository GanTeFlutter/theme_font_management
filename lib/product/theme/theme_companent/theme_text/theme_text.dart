import 'package:flutter/material.dart';
import 'package:flutter_text_theme/product/conts/app_stiring.dart';

TextTheme get textTheme => const TextTheme(
  displayLarge: TextStyle(
    fontFamily: AppStrings.fontJost,
    fontSize: 57,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
    height: 1.12,
  ),
  displayMedium: TextStyle(
    fontFamily: AppStrings.fontJost,
    fontSize: 45,
    fontWeight: FontWeight.w400,
    height: 1.16,
  ),
  displaySmall: TextStyle(
    fontFamily: AppStrings.fontJost,
    fontSize: 36,
    fontWeight: FontWeight.w400,
    height: 1.22,
  ),

  headlineLarge: TextStyle(
    fontFamily: AppStrings.fontJost,
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 1.25,
  ),
  headlineMedium: TextStyle(
    fontFamily: AppStrings.fontJost,
    fontSize: 28,
    fontWeight: FontWeight.w600,
    height: 1.29,
  ),
  headlineSmall: TextStyle(
    fontFamily: AppStrings.fontJost,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.33,
  ),

  titleLarge: TextStyle(
    fontFamily: AppStrings.fontJost,
    fontSize: 22,
    fontWeight: FontWeight.w500,
    height: 1.27,
  ),
  titleMedium: TextStyle(
    fontFamily: AppStrings.fontJost,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    height: 1.5,
  ),
  titleSmall: TextStyle(
    fontFamily: AppStrings.fontJost,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
  ),

  bodyLarge: TextStyle(
    fontFamily: AppStrings.fontInter,
    fontSize: 16,
    letterSpacing: 0.5,
    height: 1.5,
  ),
  bodyMedium: TextStyle(
    fontFamily: AppStrings.fontInter,
    fontSize: 14,
    letterSpacing: 0.25,
    height: 1.43,
  ),
  bodySmall: TextStyle(
    fontFamily: AppStrings.fontInter,
    fontSize: 12,
    letterSpacing: 0.4,
    height: 1.33,
  ),

  labelLarge: TextStyle(
    fontFamily: AppStrings.fontInter,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
  ),
  labelMedium: TextStyle(
    fontFamily: AppStrings.fontInter,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.33,
  ),
  labelSmall: TextStyle(
    fontFamily: AppStrings.fontInter,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.45,
  ),
);
