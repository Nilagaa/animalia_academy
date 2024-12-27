import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";
import "../widgets/texts/paragraph_text.dart";
import "../widgets/views/scrollable_view.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/styles/app_styles/app_text_styles.dart";
import "../consts/data/screen_space.dart";
import "../consts/data/help_text.dart";


class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(screenIcon: Icons.help),
      body: Container(
        padding: screenPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(child: Image.asset("assets/images/logos/app_logo.png", scale: 1)),

              Text("How to Use the Animalia Academy App", style: AppTextStyles.labelTextMedium),
              SizedBox(height: 4.h),

              _createHelpParagraphs(),

              SizedBox(height: 4.h),

              Center(
                child: Column(
                  children: [
                    Text("© Copyright 2024 Animalia Academy", style: AppTextStyles.disclaimerText,
                    ),
                    SizedBox(height: 0.5.h),
                    Text("All rights reserved.", style: AppTextStyles.disclaimerText,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 4.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createHelpParagraphs() {
    List<ParagraphText> paragraphs = [];

    for (int i = 0; i < helpTexts.length; i += 2) {
      ParagraphText paragraph = ParagraphText(
        heading: helpTexts[i],
        body: helpTexts[i + 1],
      );

      paragraphs.add(paragraph);
    }

    return Column(children: paragraphs);
  }
}
