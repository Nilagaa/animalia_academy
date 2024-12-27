import "package:flutter/material.dart";

import "../../data_models/user_model.dart";


class Globals extends ChangeNotifier {
  late UserModel userData;

  void updateUserField(String fieldName, int value) {
    switch (fieldName) {
      case "totalQuizzes":
        userData.totalQuizzes = value;
        break;
      case "totalQuizzesPassed":
        userData.totalQuizzesPassed = value;
        break;
      case "totalScore":
        userData.totalScore = value;
        break;
      case "totalCorrectAnswers":
        userData.totalCorrectAnswers = value;
        break;
      case "totalMistakes":
        userData.totalMistakes = value;
        break;
      default:
        throw ArgumentError("Invalid fieldName: $fieldName");
    }
    notifyListeners();
  }

  void setUserData(UserModel user) {
    userData = user;
  }
}