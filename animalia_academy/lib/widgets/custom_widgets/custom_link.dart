import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../../consts/styles/app_styles/app_colors.dart";
import "../../consts/styles/app_styles/app_shadows.dart";
import "../../consts/styles/app_styles/app_text_styles.dart";
import "../../consts/styles/app_styles/app_button_styles.dart";
import "../../consts/data/screen_space.dart";


class CustomLink extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const CustomLink({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(text, style: AppTextStyles.linkText, textAlign: TextAlign.center),
    );
  }
}

