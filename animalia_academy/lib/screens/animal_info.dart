import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";
import "../widgets/cards/animal_card.dart";
import "../widgets/views/scrollable_view.dart";
import "../widgets/custom_widgets/custom_label.dart";
import "../widgets/buttons/sound_button.dart";

import "../data_models/animal_model.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/styles/app_styles/app_text_styles.dart";
import "../consts/styles/app_styles/app_shape_decorations.dart";
import "../consts/data/screen_space.dart";

import "../utilities/handlers/decoration_handler.dart";


class AnimalInfo extends StatelessWidget {
  const AnimalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final AnimalModel? animal = _getAnimalModel(context);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(screenIcon: Icons.info),
      body: Container(
        padding: screenPadding,
        decoration: DecorationHandler.setImageDecoration("explore_background.png"),
        child: Center(
          child: ScrollableView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // add favorite button //

                AnimalCard(animal: animal!, width: 64.w, height: 64.w),
                Divider(height: 8.h, thickness: 0.25.h),
                  
                SoundButton(soundPath: animal.soundPath),
                SizedBox(height: 2.h),
                Text(animal.sound, style: AppTextStyles.textLarge),
                  
                SizedBox(height: 8.h),
                  
                Stack(
                  children: [
                    Container(
                      width: 64.w,
                      height: 65.w,
                      decoration: AppShapeDecorations.defaultDecoration,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0.w),
                        child: Card(
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(animal.habitatPath),
                          ),
                        ),
                      ),
                    ),
                  
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: CustomLabel(text: animal.habitat),
                    ),
                  ],
                ),
                  
                SizedBox(height: 8.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AnimalModel? _getAnimalModel(BuildContext context) {
    return ModalRoute.of(context)?.settings.arguments as AnimalModel?;
  }
}