import "package:flutter/material.dart";
import "package:sizer/sizer.dart";
import "package:provider/provider.dart";

import "../../screens/splash.dart";

import "../../widgets/custom_widgets/custom_app_bar.dart";
import "../../widgets/custom_widgets/custom_text_form_field.dart";
import "../../widgets/custom_widgets/custom_link.dart";
import "../../widgets/buttons/form_button.dart";
import "../../widgets/views/scrollable_view.dart";

import "../../consts/styles/app_styles/app_text_styles.dart";
import "../../consts/styles/app_styles/app_button_styles.dart";
import "../../consts/styles/app_styles/app_colors.dart";
import "../../consts/data/screen_space.dart" as ss;
import "../../consts/data/globals.dart";
import "../../data_models/user_model.dart";

import "../../controllers/register_controller.dart";

import "../../utilities/handlers/snack_bar_handler.dart";
import "../../utilities/validators/user_validator.dart";


class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final RegisterController registerController = RegisterController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          children: <Widget> [
            CustomTextFormField(
              controller: registerController.username,
              validator: UserValidator.validateUsername,
              keyboardType: TextInputType.name,
              labelText: "Username",
              icon: const Icon(Icons.person),
            ),
            SizedBox(height: 4.h),
            CustomTextFormField(
              controller: registerController.email,
              validator: UserValidator.validateEmail,
              keyboardType: TextInputType.emailAddress,
              labelText: "Email",
              icon: const Icon(Icons.email),
            ),
            SizedBox(height: 4.h),
            CustomTextFormField(
              controller: registerController.password,
              validator: UserValidator.validatePassword,
              obscureText: true,
              labelText: "Password",
              icon: const Icon(Icons.lock),
            ),
            SizedBox(height: 4.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  CustomLink(
                    text: "Already have an account?",
                    onTap: () {Navigator.popAndPushNamed(context, "/login");},
                  ),
                  FormButton(
                    text: "Register",
                    onPressed: _onRegisterButtonPressed,
                    buttonStyle: AppButtonStyles.formButton2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onRegisterButtonPressed() {
    if (_formKey.currentState!.validate()) {
      debugPrint(registerController.username.text);
      debugPrint(registerController.email.text);
      debugPrint(registerController.password.text);

      UserModel userData = UserModel(
        username: registerController.username.text,
        email: registerController.email.text,
        password: registerController.password.text,
      );

      _createAccount(userData);
    }
  }

  void _createAccount(UserModel userData) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBarHandler.setSnackBar("Account created successfully!")
    );

    Provider.of<Globals>(context, listen: false).setUserData(userData);
    
    await Future.delayed(const Duration(seconds: 2));

    Navigator.popAndPushNamed(context, "/login");
  }
}
