import "package:uuid/uuid.dart";

import "./animal_model.dart";


class QuizModel {
  final String id;
  final AnimalModel animal;
  final String question;
  final String answer;
  final List<String> choices;

  QuizModel({
    required this.animal,
    required this.question,
    required this.answer,
    required this.choices,
  }) : id = const Uuid().v4();
}