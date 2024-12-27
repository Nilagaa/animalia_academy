import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../../consts/styles/app_styles/app_colors.dart";
import "../../consts/styles/app_styles/app_shadows.dart";
import "../../consts/styles/app_styles/app_text_styles.dart";
import "../../consts/styles/app_styles/app_button_styles.dart";


class RouteButton extends StatelessWidget {
  final String text;
  final String? routeName;
  final IconData? icon;
  final VoidCallback? onPressed;

  const RouteButton({
    super.key,
    required this.text,
    this.icon,
    this.routeName = "/home",
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: AppButtonStyles.routeButton,
      onPressed: onPressed ?? () => Navigator.pushNamed(context, routeName!),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          SizedBox(width: 10.w),
          Text(text, style: AppTextStyles.buttonText),
          Icon(icon ?? Icons.home,
            size: 10.w,
            color: AppColors.primaryColor,
            shadows: AppShadows.strongShadow,
          ),
        ],
      ),
    );
  }
}

