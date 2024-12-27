import "package:flutter/material.dart";
import "package:sizer/sizer.dart";
import "package:provider/provider.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/styles/app_styles/app_text_styles.dart";
import "../consts/data/screen_space.dart";
import "../consts/data/globals.dart";
import "../data_models/user_model.dart";
import 'about_us.dart';


class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final globals = Provider.of<Globals>(context);
    UserModel userData = globals.userData;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(screenIcon: Icons.settings, showSettings: false),
      body: Container(
        margin: screenMargin,
        padding: screenPadding,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  RouteArea(
                    onTap: () {Navigator.pushNamed(context, "/parental_control");},
                    iconData: Icons.person,
                    text: "Profile",
                  ),
                  const Divider(color: Colors.black, height: 0),
                  RouteArea(
                    onTap: () {Navigator.pushNamed(context, "/help");},
                    iconData: Icons.help,
                    text: "Help",
                  ),
                  const Divider(color: Colors.black, height: 0),
                  RouteArea(
                    onTap: () {Navigator.pushNamed(context, "/about_us");},
                    iconData: Icons.info,
                    text: "About",
                  ),
                  const Divider(color: Colors.black, height: 0),
                  RouteArea(
                    onTap: () {Navigator.pushNamed(context, "/support");},
                    iconData: Icons.report_problem,
                    text: "Report a problem",
                  ),
                  const Divider(color: Colors.black, height: 0),
                  RouteArea(
                    onTap: () {
                      AppColors.switchColorTheme();
                      Navigator.of(context).pushNamedAndRemoveUntil("/home", (Route<dynamic> route) => false);
                    },
                    iconData: Icons.dark_mode,
                    text: "Dark Mode",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {Navigator.popAndPushNamed(context, "/splash");},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Text(
                "Log Out",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RouteArea extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? iconData;
  final String? text;

  const RouteArea({
    super.key,
    required this.onTap,
    this.iconData,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
        color: AppColors.secondaryColor,
        width: 100.w,
        child: Row(
          children: [
            Icon(iconData!, color: Colors.blue.shade900),
            SizedBox(width: 4.w),
            Text(text!, style: AppTextStyles.textMedium)
          ],
        ),
      ),
    );
  }
}
