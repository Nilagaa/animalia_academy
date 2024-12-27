import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/styles/app_styles/app_text_styles.dart";
import "../consts/data/screen_space.dart";
import "../widgets/views/scrollable_view.dart";


class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(screenIcon: Icons.info),
      body: ScrollableView(
        child: Center(
          child: Container(
            margin: screenMargin,
            padding: screenPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/images/logos/app_logo.png"),

                SizedBox(height: 4.h),

                Text("V1.0.000 - Build 1.000.000", style: AppTextStyles.disclaimerText),

                SizedBox(height: 24.h),

                Text("© Copyright 2024 Animalia Academy\nAll rights reserved.",
                  style: AppTextStyles.disclaimerText,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
