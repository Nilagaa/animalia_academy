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


class QuizResults extends StatelessWidget {
  const QuizResults({super.key});

  @override
  Widget build(BuildContext context) {
    QuizSessionModel quizSession = _getQuizSession(context);
    _updateUserData(context, quizSession);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(screenIcon: Icons.summarize),
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
                Center(child: Text("Results", style: AppTextStyles.textLarge)),
                Divider(height: 2.h, thickness: 0.5.h),
                SizedBox(height: 2.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Row(
                        children: <Widget> [
                          const Icon(Icons.check_circle, color: Colors.green),
                          SizedBox(width: 2.w),
                          Text("Correct Answers: ${quizSession.correctAnswers}", style: AppTextStyles.textMedium),
                        ],
                      ),
                      Row(
                        children: <Widget> [
                          const Icon(Icons.close_rounded, color: Colors.red),
                          SizedBox(width: 2.w),
                          Text("Mistakes: ${quizSession.mistakes}", style: AppTextStyles.textMedium),
                        ],
                      ),
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

  QuizSessionModel _getQuizSession(BuildContext context) {
    return ModalRoute.of(context)!.settings.arguments as QuizSessionModel;
  }

  void _updateUserData(BuildContext context, QuizSessionModel quizSession) {
    final globals = Provider.of<Globals>(context);
    UserModel userData = globals.userData;

    globals.updateUserField("totalQuizzes", userData.totalQuizzes + 1);

    if (quizSession.correctAnswers >= quizSession.mistakes) {
      globals.updateUserField("totalQuizzesPassed", userData.totalQuizzesPassed + 1);
    }

    globals.updateUserField("totalScore", userData.totalScore + quizSession.correctAnswers);
    globals.updateUserField("totalCorrectAnswers", userData.totalCorrectAnswers + quizSession.correctAnswers);
    globals.updateUserField("totalMistakes", userData.totalMistakes + quizSession.mistakes);
  }

}