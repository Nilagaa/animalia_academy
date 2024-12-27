import "package:email_validator/email_validator.dart";

import "../../consts/data/validator_constants.dart" as vc;


class UserValidator {
  static String? validateUsername(String? value) {
    if (value!.isEmpty) {
      return "Enter your username";
    }
    if (value.length < vc.minUsernameLength || value.length > vc.maxUsernameLength) {
      return "Username must be at least ${vc.minUsernameLength}-${vc.maxUsernameLength} characters";
    }
    if (!value.contains(RegExp(r"^[a-zA-Z0-9]+$"))) {
      return "Username can only contain letters and numbers";
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return "Enter your password";
    }
    if (value.length < vc.minPasswordLength || value.length > vc.maxPasswordLength) {
      return "Password must be at least ${vc.minPasswordLength}-${vc.maxPasswordLength} characters";
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Enter your email";
    }
    if(!EmailValidator.validate(value)) {
      return "Enter a valid email address";
    }

    return null;
  }
}
