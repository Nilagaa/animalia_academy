

class QuizSessionModel {
  final String? id;

  int correctAnswers = 0;
  int mistakes = 0;
  double playTime = 0;

  QuizSessionModel({this.id});
}
