import 'package:flutter/material.dart';
import 'package:myecommerce/core/constant/colors.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayFairDisplay",
  primarySwatch: Colors.blue,
  textTheme: TextTheme(
    headline1: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: AppColors.onBoardingTitleColor),
    headline2: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
        color: AppColors.onBoardingTitleColor),
    bodyText1: TextStyle(
        fontSize: 14,
        height: 2,
        color: AppColors.onBoardingBodyColor,
        fontWeight: FontWeight.bold),
    bodyText2: TextStyle(
      fontSize: 12,
      height: 2,
      color: AppColors.onBoardingBodyColor,
    ),
  ),
);
ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  primarySwatch: Colors.blue,
  textTheme: TextTheme(
    headline1: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: AppColors.onBoardingTitleColor),
    headline2: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
        color: AppColors.onBoardingTitleColor),
    bodyText1: TextStyle(
        fontSize: 14,
        height: 2,
        color: AppColors.onBoardingBodyColor,
        fontWeight: FontWeight.bold),
    bodyText2: TextStyle(
      fontSize: 12,
      height: 2,
      color: AppColors.onBoardingBodyColor,
    ),
  ),
);
