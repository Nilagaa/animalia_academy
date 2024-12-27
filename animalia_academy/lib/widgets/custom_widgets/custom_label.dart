import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../../consts/styles/app_styles/app_text_styles.dart";
import "../../consts/styles/app_styles/app_colors.dart";
import "../../consts/styles/app_styles/app_shadows.dart";


class CustomLabel extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;

  const CustomLabel({
    super.key,
    required this.text,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: AppShadows.mediumShadow,
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Text(text,
        style: AppTextStyles.labelText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
