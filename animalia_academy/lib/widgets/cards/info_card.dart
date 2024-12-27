import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../custom_widgets/custom_label.dart";

import "../../consts/styles/app_styles/app_shape_decorations.dart";


class InfoCard extends StatelessWidget {
  final bool interactive;
  final bool labelVisible;
  final double? width;
  final double? height;

  const InfoCard({
    super.key,
    this.interactive = false,
    this.labelVisible = false,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Widget setCardInfo(String imagePath, String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: interactive ? onTap : () {},
      child: Stack(
        children: [
          Container(
            width: width ?? 42.w,
            height: height ?? 42.w,
            decoration: AppShapeDecorations.defaultDecoration,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0.w),
              child: Card(
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                ),
              ),
            ),
          ),

          _setLabel(text)
        ],
      ),
    );
  }

  Widget _setLabel(String text) {
    if (labelVisible) {
      return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: CustomLabel(text: text),
      );
    } else {
      return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container()
      );
    }
  }
}
