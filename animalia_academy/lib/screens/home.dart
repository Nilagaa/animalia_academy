import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";
import "../widgets/buttons/route_button.dart";
import "../widgets/views/scrollable_view.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/styles/app_styles/app_text_styles.dart";
import "../consts/data/screen_space.dart";

import "../utilities/handlers/decoration_handler.dart";

import "../test_widgets/routing_test.dart";


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(backButtonVisible: false),
      body: SizedBox.expand(
        child: Container(
          padding: screenPadding,
          decoration: DecorationHandler.setImageDecoration("home_background.png"),
          child: ScrollableView(
            child: Column(
              children: <Widget> [
                SizedBox(height: 2.w),
                Image.asset("assets/images/logos/app_logo.png", scale: 1.25),
                SizedBox(height: 4.w),
        
                const RouteButton(
                  text: "Explore",
                  routeName: "/explore",
                  icon: Icons.explore,
                ),
                SizedBox(height: 8.w),
                const RouteButton(
                  text: "Take Quiz",
                  routeName: "/quiz",
                  icon: Icons.quiz,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
