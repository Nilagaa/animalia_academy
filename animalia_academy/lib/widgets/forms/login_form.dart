import "package:animalia_academy/controllers/login_controller.dart";
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

import "../../controllers/register_controller.dart";

import "../../utilities/handlers/snack_bar_handler.dart";
import "../../utilities/validators/user_validator.dart";


class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    final globals = Provider.of<Globals>(context);

    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          children: <Widget> [
            SizedBox(height: 4.h),
            CustomTextFormField(
              controller: loginController.email,
              validator: UserValidator.validateEmail,
              keyboardType: TextInputType.emailAddress,
              labelText: "Email",
              icon: const Icon(Icons.email),
            ),
            SizedBox(height: 4.h),
            CustomTextFormField(
              controller: loginController.password,
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
                    text: "Don't have an account?",
                    onTap: () {Navigator.popAndPushNamed(context, "/register");},
                  ),
                  FormButton(
                    text: "Log in",
                    onPressed: () {_onLoginButtonPressed(globals);},
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

  void _onLoginButtonPressed(Globals globals) {
    if (_formKey.currentState!.validate()) {
      String email = loginController.email.text;
      String password = loginController.password.text;

      String storedEmail = globals.userData.email;
      String storedPassword = globals.userData.password;

      if (email == storedEmail && password == storedPassword) {
        _loginUser();
      } else {
        _loginFailed();
      }
    }
  }

  void _loginUser() async {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBarHandler.setSnackBar("Logged in successfully!")
    );

    await Future.delayed(const Duration(seconds: 2));

    Navigator.pushReplacement(context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const Splash(routeName: "/home"),
      ),
    );
  }

  void _loginFailed() async {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBarHandler.setSnackBar("Log in failed!")
    );
  }
}
