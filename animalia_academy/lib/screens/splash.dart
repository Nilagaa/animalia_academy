import "package:flutter/material.dart";
import "package:flutter_spinkit/flutter_spinkit.dart";
import "package:sizer/sizer.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/styles/app_styles/app_text_styles.dart";
import "../consts/data/app_constants.dart" as c;

import "../utilities/handlers/decoration_handler.dart";


class Splash extends StatefulWidget {
  final String? routeName;

  const Splash({
    super.key,
    this.routeName,
  });

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    _loadScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        decoration: DecorationHandler.setImageDecoration("splash_background.png"),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: <Widget> [
                  Positioned(
                    top: -4.75.h,
                    left: 0,
                    right: 0,
                    child: SpinKitRing(
                      color: AppColors.primaryColor,
                      size: 72.w,
                    ),
                  ),

                  Image.asset("assets/images/logos/app_logo_no_text.png", scale: 0.8.sp),
                ],
              ),

              SizedBox(height: 2.h),

              Text("ANIMALIA ACADEMY",
                style: AppTextStyles.splashText,
                textAlign: TextAlign.center
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _loadScreen() async {
    await Future.delayed(const Duration(seconds: c.splashLoadTime));
    Navigator.popAndPushNamed(context, widget.routeName ?? "/login");
  }
}
