import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../buttons/settings_icon_button.dart";

import "../../consts/styles/themes/icon_theme.dart";
import "../../consts/styles/app_styles/app_colors.dart";
import "../../consts/styles/app_styles/app_shadows.dart";


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData? screenIcon;
  final bool? showSettings;
  final bool? backButtonVisible;

  const CustomAppBar({
    super.key,
    this.screenIcon,
    this.showSettings = true,
    this.backButtonVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: AppShadows.subtleShadow),
      child: AppBar(
        backgroundColor: AppColors.accentColor,
        centerTitle: true,
        iconTheme: customIconTheme,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (!backButtonVisible!) SizedBox(width: 14.w),

                  Icon(screenIcon ?? Icons.home,
                    size: 10.w,
                    color: AppColors.textColor,
                    shadows: AppShadows.strongShadow,
                  ),
                ],
              ),
            ),

            showSettings! ? const SettingsIconButton() : SizedBox(width: 14.w),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
