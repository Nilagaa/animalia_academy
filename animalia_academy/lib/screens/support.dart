import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";
import "../widgets/custom_widgets/custom_text_form_field.dart";
import "../widgets/buttons/form_button.dart";
import "../widgets/views/scrollable_view.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/styles/app_styles/app_text_styles.dart";
import "../consts/data/screen_space.dart";


class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  final _formKey = GlobalKey<FormState>();
  final subjectController = TextEditingController();
  final reportController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(screenIcon: Icons.info),
      body: ScrollableView(
        child: Container(
          margin: screenMargin,
          padding: screenPadding,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    "Report a problem",
                    style: AppTextStyles.labelText
                  ),
                ),
                SizedBox(height: 2.5.h),
                CustomTextFormField(
                  controller: subjectController,
                  validator: (value) {return null;},
                  icon: const Icon(Icons.subject),
                  labelText: "Write the problem..."
                ),
                SizedBox(height: 5.h),
                CustomTextFormField(
                  controller: reportController,
                  validator: (value) {return null;},
                  height: 20.h,
                  labelText: "Tell us about what's going on...",
                  maxLines: null,
                  textAlignVertical: TextAlignVertical.top,
                ),
                SizedBox(height: 5.h),
                FormButton(
                  onPressed: () => debugPrint("Text"),
                  text: "Send",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}