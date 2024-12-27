import "package:flutter/material.dart";

import "./text_theme.dart";
import "./color_scheme.dart";


ThemeData appTheme = ThemeData(
  fontFamily: "Anek-Latin",
  textTheme: customTextTheme,
  colorScheme: customColorScheme,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder()},
  ),
);