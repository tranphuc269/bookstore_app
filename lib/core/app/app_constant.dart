import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'size_config.dart';

class AppConst {
  /*
    ...App General Const
  */
  static const double defaultMediumMargin = 16;

  static const double defaultMediumMargin12 = 12;

  static const double defaultLargeMargin = 32;

  static const double defaultSmallMargin = 8;

  static const double defaultVerySmallMargin = 4;

  /* Size Helper
  ... Size of everything
   */

  /// The height of SafeArea Widget
  static double safeAreaHeight = Get.height -
      MediaQuery.of(Get.context!).padding.top -
      MediaQuery.of(Get.context!).padding.bottom;

  /// The height of SafeArea - Toolbar or the height of content view
  static double contentHeight = safeAreaHeight - kToolbarHeight;

  static EdgeInsetsGeometry kPaddingVeryLargeDefaultHorizontal =
      const EdgeInsets.symmetric(horizontal: 80);

  static EdgeInsetsGeometry kPaddingLargeDefaultHorizontal =
      const EdgeInsets.symmetric(horizontal: 32);
  static EdgeInsetsGeometry kPaddingLargeDefaultVertical =
      const EdgeInsets.symmetric(vertical: 32);
  static EdgeInsetsGeometry kPaddingMediumDefaultHorizontal =
      const EdgeInsets.symmetric(horizontal: 16);
  static EdgeInsetsGeometry kPaddingMediumDefaultVertical =
      const EdgeInsets.symmetric(vertical: 16);
  static EdgeInsetsGeometry kPaddingMediumDefault = const EdgeInsets.all(16);

  static EdgeInsetsGeometry kPaddingSmallDefaultHorizontal =
      const EdgeInsets.symmetric(horizontal: 8);
  static EdgeInsetsGeometry kPaddingSmallDefaultVertical =
      const EdgeInsets.symmetric(vertical: 8);
  static EdgeInsetsGeometry kPaddingSmallDefault = const EdgeInsets.all(8);
}

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
const String kEmailNullError = 'Please Enter your email';
const String kInvalidEmailError = 'Please Enter Valid Email';
const String kPassNullError = 'Please Enter your password';
const String kShortPassError = 'Password is too short';
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = 'Please Enter your name';
const String kPhoneNumberNullError = 'Please Enter your phone number';
const String kAddressNullError = 'Please Enter your address';

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
enum MenuState { home, favourite, message, profile }
