import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../../consts/styles/app_styles/app_colors.dart";
import "../../consts/styles/app_styles/app_shadows.dart";
import "../../consts/styles/app_styles/app_text_styles.dart";
import "../../consts/styles/app_styles/app_button_styles.dart";


class FormButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? text;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;

  const FormButton({
    super.key,
    required this.onPressed,
    this.text = "",
    this.buttonStyle,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle ?? AppButtonStyles.formButton,
      onPressed: onPressed,
      child: Text(text!, style: textStyle ?? AppTextStyles.formButtonText),
    );
  }
}

