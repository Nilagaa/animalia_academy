import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../../consts/styles/app_styles/app_text_styles.dart";


class ParagraphText extends StatelessWidget {
  final String heading;
  final String body;

  const ParagraphText({
    super.key,
    required this.heading,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(heading,
          style: AppTextStyles.textSmall,
          textAlign: TextAlign.start,
        ),
        Text(body, style: AppTextStyles.textTiny,
        ),
        SizedBox(height: 2.5.h),
      ],
    );
  }
}