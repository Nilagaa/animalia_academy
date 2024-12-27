import "./quiz_model.dart";


class UserModel {
  final String? id;
  final String username;
  final String email;
  final String password;

  int totalQuizzes = 0;
  int totalQuizzesPassed = 0;
  int totalScore = 0;
  int totalCorrectAnswers = 0;
  int totalMistakes = 0;
  double currentPlayTime = 0;
  double totalPlayTime = 0;
  List<QuizModel> quizzesTaken = [];
  List<String> favoriteAnimals = [];

  UserModel({
    this.id,
    required this.username,
    required this.email,
    required this.password,
  });
}
