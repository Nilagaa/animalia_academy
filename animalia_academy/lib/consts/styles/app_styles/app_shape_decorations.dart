import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "app_shadows.dart";


class AppShapeDecorations {
  static ShapeDecoration defaultDecoration = ShapeDecoration(
    shadows: AppShadows.mediumShadow,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0.w)
    ),
  );
}
