import "package:animalia_academy/consts/styles/app_styles/app_text_styles.dart";
import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../custom_widgets/custom_label.dart";
import "../buttons/choice_button.dart";
import "animal_card.dart";

import "../../consts/styles/app_styles/app_shape_decorations.dart";
import "../../consts/styles/app_styles/app_colors.dart";
import "../../consts/data/screen_space.dart";
import "../../consts/data/quiz_questions.dart";
import "../../consts/data/app_constants.dart" as c;
import "../../data_models/quiz_model.dart";

import "../../utilities/handlers/decoration_handler.dart";


class QuizCard extends StatelessWidget {
  final QuizModel quiz;
  final Function(String) onAnswer;
  final int questionNumber;

  const QuizCard({
    super.key,
    required this.quiz,
    required this.onAnswer,
    required this.questionNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: DecorationHandler.setBoxDecoration(),
      child: Card(
        color: AppColors.cardColor,
        child: Container(
          padding: screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Question ${questionNumber.toString()}", style: AppTextStyles.labelText),

              Divider(height: 4.h, thickness: 0.25.h),

              AnimalCard(animal: quiz.animal, soundButtonVisible: true, width: 50.w, height: 25.h),

              SizedBox(height: 2.h),

              Text(quiz.question, style: AppTextStyles.textMedium),

              Divider(height: 4.h, thickness: 0.25.h),
              SizedBox(height: 2.h),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:_setChoiceWidgets(context),
              ),
            ],
          ),
        )
      ),
    );
  }

  Widget _setChoiceWidgets(BuildContext context) {
    if (c.shuffleChoices) {quiz.choices.shuffle();}

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ChoiceButton(
              onPressed: () => onAnswer(quiz.choices[0]),
              text: quiz.choices[0],
            ),
            SizedBox(width: 4.w),
            ChoiceButton(
              onPressed: () => onAnswer(quiz.choices[1]),
              text: quiz.choices[1],
            ),
          ],
        ),

        SizedBox(height: 2.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ChoiceButton(
              onPressed: () => onAnswer(quiz.choices[2]),
              text: quiz.choices[2],
            ),
            SizedBox(width: 4.w),
            ChoiceButton(
              onPressed: () => onAnswer(quiz.choices[3]),
              text: quiz.choices[3],
            ),
          ],
        ),
      ],
    );
  }
}
