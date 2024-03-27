import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "Vina",
  textTheme: const TextTheme(
      displayMedium: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 30,
        color: AppColor.black,
      ),
      displayLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 33,
        color: AppColor.black,
      ),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 17)),
  colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
  useMaterial3: true,
);
ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      displayMedium: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 30,
        color: AppColor.black,
      ),
      displayLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 33,
        color: AppColor.black,
      ),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 17)),
  colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
  useMaterial3: true,
);
