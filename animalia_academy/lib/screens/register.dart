import "package:flutter/material.dart";
import "package:sizer/sizer.dart";
import "package:email_validator/email_validator.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";
import "../widgets/custom_widgets/custom_text_form_field.dart";
import "../widgets/forms/register_form.dart";
import "../widgets/buttons/form_button.dart";
import "../widgets/views/scrollable_view.dart";

import "../consts/styles/app_styles/app_text_styles.dart";
import "../consts/styles/app_styles/app_colors.dart";
import "../consts/data/screen_space.dart";

import "../controllers/register_controller.dart";

import "../utilities/handlers/decoration_handler.dart";
import "../utilities/validators/user_validator.dart";


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SizedBox.expand(
          child: Container(
            padding: screenPadding,
            decoration: DecorationHandler.setImageDecoration("login_background.png"),
            child: ScrollableView(
              child: Column(
                children: <Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Text("Register", style: AppTextStyles.textLarge),
                      Icon(Icons.app_registration, size: 36.sp, color: AppColors.textColor),
                    ],
                  ),

                  Divider(height: 4.h, thickness: 0.15.h, color: AppColors.textColor),

                  Image.asset("assets/images/logos/app_logo.png", scale: 1.5),

                  const RegisterForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}