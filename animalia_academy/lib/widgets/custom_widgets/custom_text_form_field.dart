import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../../consts/styles/app_styles/app_shape_decorations.dart";
import "../../consts/styles/app_styles/app_colors.dart";
import "../../consts/styles/app_styles/app_shadows.dart";

import "../../utilities/handlers/audio_handler.dart";
import "../../utilities/handlers/decoration_handler.dart";


class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String?) validator;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? labelText;
  final Icon? icon;
  final int? maxLines;
  final TextAlignVertical? textAlignVertical;
  final double? width;
  final double? height;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.labelText,
    this.icon,
    this.maxLines,
    this.textAlignVertical,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) => validator(value),
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: obscureText!,
      decoration: DecorationHandler.setInputDecoration(labelText, icon, height),
      maxLines: maxLines ?? 1,
      textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
    );
  }
}
