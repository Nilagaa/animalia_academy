import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../../consts/styles/app_styles/app_colors.dart";
import "../../consts/styles/app_styles/app_shadows.dart";


class DecorationHandler {
  static BoxDecoration setImageDecoration(String fileName) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/backgrounds/$fileName"),
        fit: BoxFit.cover,
        opacity: 0.95,
      ),
    );
  }
  static BoxDecoration setBoxDecoration() {
    return BoxDecoration(
      color: AppColors.backgroundColor,
      borderRadius: BorderRadius.circular(16.0),
      boxShadow: AppShadows.mediumShadow,
    );
  }
  static InputDecoration setInputDecoration(String? labelText, Icon? icon, double? fieldHeight) {
    return InputDecoration(
      labelText: labelText,
      prefixIcon: icon,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
      contentPadding: EdgeInsets.only(bottom: fieldHeight ?? 2.h),
      filled: true,
      fillColor: AppColors.fieldColor,
    );
  }
}
