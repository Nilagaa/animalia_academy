import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import '../../consts/styles/app_styles/app_colors.dart';
import '../../consts/styles/app_styles/app_shadows.dart';


class SettingsIconButton extends StatelessWidget {
  const SettingsIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.settings,
        size: 10.w,
        color: AppColors.backgroundColor,
        shadows: AppShadows.mediumShadow,
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/settings");
      },
    );
  }
}
