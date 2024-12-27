import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "app_colors.dart";
import "app_text_styles.dart";


class AppButtonStyles {
  static ButtonStyle soundButton = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color?>(AppColors.accentColor),
    elevation: WidgetStateProperty.all<double?>(4.0),
    shape: WidgetStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(64.0)),
    ),
  );
  static ButtonStyle routeButton = ButtonStyle(
    minimumSize: WidgetStateProperty.all<Size?>(Size(120.w, 18.w)),
    textStyle: WidgetStateProperty.all<TextStyle?>(AppTextStyles.buttonText),
    backgroundColor: WidgetStateProperty.all<Color?>(AppColors.accentColor),
    elevation: WidgetStateProperty.all<double?>(4.0),
    shape: WidgetStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(64.0)),
    ),
  );
  static ButtonStyle formButton = ButtonStyle(
    minimumSize: WidgetStateProperty.all<Size?>(Size(48.w, 14.w)),
    textStyle: WidgetStateProperty.all<TextStyle?>(AppTextStyles.buttonText),
    backgroundColor: WidgetStateProperty.all<Color?>(AppColors.accentColor),
    elevation: WidgetStateProperty.all<double?>(4.0),
    shape: WidgetStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(64.0)),
    ),
  );
  static ButtonStyle formButton2 = ButtonStyle(
    minimumSize: WidgetStateProperty.all<Size?>(Size(12.w, 12.w)),
    textStyle: WidgetStateProperty.all<TextStyle?>(AppTextStyles.formButtonText),
    backgroundColor: WidgetStateProperty.all<Color?>(AppColors.backgroundColor),
    elevation: WidgetStateProperty.all<double?>(8.0),
    shape: WidgetStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(64.0)),
    ),
  );
  static ButtonStyle choiceButton = ButtonStyle(
    minimumSize: WidgetStateProperty.all<Size?>(Size(36.w, 14.w)),
    textStyle: WidgetStateProperty.all<TextStyle?>(AppTextStyles.buttonText),
    backgroundColor: WidgetStateProperty.all<Color?>(AppColors.accentColor),
    elevation: WidgetStateProperty.all<double?>(4.0),
    shape: WidgetStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(64.0)),
    ),
  );
}
