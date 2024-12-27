import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "consts/styles/themes/app_theme.dart";

import "collections/routes.dart";


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Started Application...");

    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: "Animalia Academy",
          theme: appTheme,
          initialRoute: "/splash",
          routes: routes,
        );
      }
    );
  }
}