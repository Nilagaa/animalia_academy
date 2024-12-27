import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";

import "../widgets/cards/animal_card.dart";

import "../data_models/animal_model.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/data/animals.dart";
import "../consts/data/screen_space.dart";

import "../utilities/handlers/decoration_handler.dart";


class AnimalSelection extends StatelessWidget {
  const AnimalSelection({super.key});

  @override
  Widget build(BuildContext context) {
    String? category = _getCategory(context);
    List<AnimalModel> selectedAnimals = getAnimalListByCategory(category!);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(screenIcon: Icons.pets),
      body: Scrollbar(
        child: Container(
          padding: screenPadding,
          decoration: DecorationHandler.setImageDecoration("explore_background.png"),
          child: GridView.builder( // PUT IN CLASS/FUNCTION //
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _calculateCrossAxisCount(context),
              crossAxisSpacing: 4.0.w,
              mainAxisSpacing: 8.0.w,
              childAspectRatio: 1.0,
            ),
            itemCount: selectedAnimals.length,
            itemBuilder: (context, index) {
              AnimalModel animal = selectedAnimals[index];

              if (animal.category == category) {
                return AnimalCard(
                  animal: selectedAnimals[index],
                  interactive: true,
                  labelVisible: true,
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }

  int _calculateCrossAxisCount(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 150).floor();

    return crossAxisCount;
  }

  String? _getCategory(BuildContext context) {
    return ModalRoute.of(context)?.settings.arguments as String?;
  }

}