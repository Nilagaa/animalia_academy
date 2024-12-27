import "package:flutter/material.dart";
import "dart:math";
import "package:sizer/sizer.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";
import "../widgets/cards/quiz_card.dart";
import "../widgets/views/scrollable_view.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/data/screen_space.dart";
import "../../consts/data/quiz_questions.dart";
import "../consts/data/app_constants.dart" as c;
import "../../data_models/quiz_model.dart";
import "../../data_models/quiz_session_model.dart";

import "../utilities/handlers/audio_handler.dart";


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  QuizSessionModel quizSession = QuizSessionModel();
  late QuizModel currentQuizQuestion;
  List<QuizModel> usedQuestions = [];

  int questionNumber = 1;
  bool isPreviousAnswerCorrect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(screenIcon: Icons.quiz),
      body: ScrollableView(
        child: Container(
          padding: screenPadding,
          child: Stack(
            children: <Widget> [
              _createRandomQuizQuestion(),
              _getAnswerIcon(),
            ],
          ),
        ),
      ),
    );
  }

  QuizCard _createRandomQuizQuestion() {
    QuizModel randomQuizQuestion = _getRandomQuizQuestion();
    currentQuizQuestion = randomQuizQuestion;
    usedQuestions.add(randomQuizQuestion);

    QuizCard quizCard = QuizCard(
      onAnswer: _checkAnswer,
      quiz: randomQuizQuestion,
      questionNumber: questionNumber
    );

    return quizCard;
  }

  QuizModel _getRandomQuizQuestion() {
    if (c.shuffleChoices) {quizQuestions.shuffle();}

    for (QuizModel quizModel in quizQuestions) {
      if (!usedQuestions.contains(quizModel)) {
        return quizModel;
      }
    }

    return quizQuestions[0];
  }

  void _checkAnswer(String userAnswer) async {
    questionNumber++;

    if (userAnswer == currentQuizQuestion.answer) {
      quizSession.correctAnswers++;
      isPreviousAnswerCorrect = true;
      AudioHandler.playAudio("assets/audio/sfx/app_sounds/correct_answer.wav", 0.5);
    } else {
      quizSession.mistakes++;
      isPreviousAnswerCorrect = false;
      AudioHandler.playAudio("assets/audio/sfx/app_sounds/wrong_answer.wav", 0.5);
    }

    await Future.delayed(const Duration(seconds: 1));

    if (questionNumber > c.questionsPerQuiz) {
      Navigator.popAndPushNamed(context, "/quiz_results", arguments: quizSession);
    } else {
      setState(() {});
    }
  }

  Widget _getAnswerIcon() {
    if (isPreviousAnswerCorrect) {return _setAnswerIcon(Icons.check, Colors.green);}
    else {
      if (questionNumber > 1) {return _setAnswerIcon(Icons.close, Colors.red);}
      return Container();
    }
  }

  Positioned _setAnswerIcon(IconData iconData, Color color) {
    return Positioned(
      top: 2.5.h,
      left: 60.w,
      child: Container(
        width: 50.w,
        height: 5.h,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Icon(iconData, color: Colors.white, size: 30.0.sp),
      ),
    );
  }
}
