import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";
import "../widgets/views/scrollable_view.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/data/screen_space.dart";


class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(screenIcon: Icons.star),
      body: ScrollableView(
        child: Container(
          margin: screenMargin,
          padding: screenPadding,
          child: Column(
            children: <Widget> [
              Text("Favorites"),
            ],
          ),
        ),
      ),
    );
  }

}