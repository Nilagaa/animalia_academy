import "package:flutter/material.dart";


class AppColors {
  static String currentColorTheme = "light";

  static Color primaryColor = const Color(0xffF95738);
  static Color secondaryColor = const Color(0xffEE964B);
  static Color accentColor = const Color(0xffF4D65E);
  static Color backgroundColor = const Color(0xffFAF0CA);
  static Color textColor = const Color(0xff0D3B66);
  static Color fieldColor = const Color(0xffFAFAE6);
  static Color cardColor = const Color(0xffe6e6a0);

  static void switchColorTheme() {
    if (currentColorTheme == "light") {
      currentColorTheme = "dark";

      primaryColor = const Color(0xff861b09);
      secondaryColor = const Color(0xffaf5714);
      accentColor = const Color(0xffa98b12);
      backgroundColor = const Color(0xffa18214);
      textColor = const Color(0xff053159);
      fieldColor = const Color(0xffb9b95d);
      cardColor = const Color(0xff8f8f20);
    } else if (currentColorTheme == "dark") {
      currentColorTheme = "light";
      primaryColor = const Color(0xffF95738);
      secondaryColor = const Color(0xffEE964B);
      accentColor = const Color(0xffF4D65E);
      backgroundColor = const Color(0xffFAF0CA);
      textColor = const Color(0xff0D3B66);
      fieldColor = const Color(0xffFAFAE6);
      cardColor = const Color(0xffe6e6a0);
    }
  }
}
