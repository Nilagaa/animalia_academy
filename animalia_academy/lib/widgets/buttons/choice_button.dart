import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../../consts/styles/app_styles/app_colors.dart";
import "../../consts/styles/app_styles/app_shadows.dart";
import "../../consts/styles/app_styles/app_text_styles.dart";
import "../../consts/styles/app_styles/app_button_styles.dart";
import "../../consts/data/screen_space.dart";


class ChoiceButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const ChoiceButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: AppButtonStyles.choiceButton,
      onPressed: onPressed,
      child: Text(text, style: AppTextStyles.textSmall, textAlign: TextAlign.center),
    );
  }
}

