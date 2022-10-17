import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  // General
  static const Color primary = Color(0xff009cc6);
  static const Color primaryVariant = Color(0xffbfedff);
  static const Color onPrimary = Color(0xff009cc6);
  static const Color secondary = Color(0xff70cde5);
  static const Color secondaryVariant = Color(0xff53d4ff);
  static const Color accent = Color(0xffffa939);

  static const Color bgPrimary = Color(0xfff9f3ee);

  // System
  static const Color systemGrey = Color(0xffF1F1F1);
  static const Color systemBlack = Color(0xff141414);
  static const Color systemDarkGrey = Color(0xff9e9e9e);
  static const Color systemBgDark = Color(0xff303030);
  static const Color systemBgLight = Color(0xffFAFAFA);
  static const Color subtitleText = Color(0xff504F5E);
  Color containerThemeColor = (Get.isDarkMode)
      ? Get.context!.theme.dialogBackgroundColor
      : systemGrey;

  // Dark Mode
  static const Color baseDark = Color(0xff303030);
  static const Color baseLight = Color(0xffFAFAFA);

  // Material Color
  static Map<int, Color> color = {
    50: const Color.fromRGBO(255, 255, 255, 1),
    100: const Color.fromRGBO(255, 255, 255, 0.9294117647058824),
    200: const Color.fromRGBO(255, 255, 255, 1),
    300: const Color.fromRGBO(213, 209, 211, 1),
    400: const Color.fromRGBO(199, 198, 199, 1),
    500: const Color.fromRGBO(179, 175, 177, 1),
    600: const Color.fromRGBO(156, 155, 156, 1),
    700: const Color.fromRGBO(139, 136, 137, 1),
    800: const Color.fromRGBO(68, 68, 68, 1),
    900: const Color.fromRGBO(45, 45, 45, 1),
  };
  static MaterialColor materialPrimary = MaterialColor(0xff009cc6, color);



  static Color primaryColor = const Color(0xFFFE1D61);
}