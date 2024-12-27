import "package:flutter/material.dart";
import "package:sizer/sizer.dart";
import "package:provider/provider.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";
import "../widgets/views/scrollable_view.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/styles/app_styles/app_text_styles.dart";
import "../consts/data/screen_space.dart";
import "../consts/data/globals.dart";
import "../data_models/user_model.dart";
import "../data_models/quiz_session_model.dart";


class ParentalControl extends StatelessWidget {
  const ParentalControl({super.key});

  @override
  Widget build(BuildContext context) {
    final globals = Provider.of<Globals>(context);
    UserModel userData = globals.userData;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(screenIcon: Icons.person),
      body: Container(
        margin: screenMargin,
        padding: screenPadding,
        child: ScrollableView(
          child: Container(
            padding: screenPadding,
            color: AppColors.cardColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Center(child: Text("Progress for:", style: AppTextStyles.textMedium)),
                Center(child: Text(userData.username, style: AppTextStyles.textLarge)),
                Divider(height: 2.h, thickness: 0.5.h),
                SizedBox(height: 2.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Text("Total Quizzes: ${userData.totalQuizzes}", style: AppTextStyles.textSmall),
                      Text("Total Quizzes Passed: ${userData.totalQuizzesPassed}", style: AppTextStyles.textSmall),
                      Text("Total Score: ${userData.totalScore}", style: AppTextStyles.textSmall),
                      Text("Total Correct Answers: ${userData.totalCorrectAnswers}", style: AppTextStyles.textSmall),
                      Text("Total Mistakes: ${userData.totalMistakes}", style: AppTextStyles.textSmall),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}