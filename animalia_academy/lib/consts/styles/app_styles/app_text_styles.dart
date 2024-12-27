import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:sizer/sizer.dart";

import "app_colors.dart";
import "app_shadows.dart";


class AppTextStyles {
  // DEFAULT STYLES //
  static TextStyle textTitle = TextStyle(
    color: AppColors.textColor,
    fontSize: 48.sp,
    fontWeight: FontWeight.w900,
    letterSpacing: 2.0,
    height: 0.3.w,
    shadows: AppShadows.strongShadow,
  );
  static TextStyle textLarge = TextStyle(
    color: AppColors.textColor,
    fontSize: 36.sp,
    fontWeight: FontWeight.w800,
    letterSpacing: 2.0,
    shadows: AppShadows.strongShadow,
  );
  static TextStyle textMedium = TextStyle(
    color: AppColors.textColor,
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.5,
    shadows: AppShadows.mediumShadow,
  );
  static TextStyle textSmall = TextStyle(
    color: AppColors.textColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.0,
    shadows: AppShadows.mediumShadow,
  );
  static TextStyle textVerySmall = TextStyle(
    color: AppColors.textColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.0,
    shadows: AppShadows.subtleShadow,
  );
  static TextStyle textTiny = TextStyle(
    color: AppColors.textColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w200,
    letterSpacing: 1.0,
    shadows: AppShadows.subtleShadow,
  );

  // CUSTOM STYLES //
  static TextStyle splashText = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 48.sp,
    fontWeight: FontWeight.w900,
    letterSpacing: 2.0,
    height: 0.3.w,
    shadows: AppShadows.heavyShadow,
  );
  static TextStyle labelText = TextStyle(
    color: AppColors.textColor,
    fontSize: 24.sp,
    fontWeight: FontWeight.w800,
    letterSpacing: 1.5,
    shadows: AppShadows.mediumShadow,
  );
  static TextStyle labelTextMedium = TextStyle(
    color: AppColors.textColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.0,
    shadows: AppShadows.subtleShadow,
  );
  static TextStyle buttonText = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 36.sp,
    fontWeight: FontWeight.w800,
    letterSpacing: 2.0,
    shadows: AppShadows.strongShadow,
  );
  static TextStyle formButtonText = TextStyle(
    color: AppColors.textColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.0,
    shadows: AppShadows.subtleShadow,
  );
  static TextStyle snackBarText = TextStyle(
    color: AppColors.textColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.0,
    shadows: AppShadows.subtleShadow,
  );
  static TextStyle linkText = TextStyle(
    color: AppColors.textColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.0,
    decoration: TextDecoration.underline,
    shadows: AppShadows.subtleShadow,
    overflow: TextOverflow.fade,
  );
  static TextStyle disclaimerText = TextStyle(
    color: AppColors.textColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w800,
    letterSpacing: 1.0,
    shadows: AppShadows.subtleShadow,
  );
}
