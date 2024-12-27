import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../../consts/styles/app_styles/app_colors.dart";
import "../../consts/styles/app_styles/app_text_styles.dart";


class SnackBarHandler {
  static SnackBar setSnackBar(String text) {
    return SnackBar(
      content: Text(text, style: AppTextStyles.snackBarText),
      backgroundColor: AppColors.accentColor,
      showCloseIcon: true,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(8.sp),
    );
  }
}


