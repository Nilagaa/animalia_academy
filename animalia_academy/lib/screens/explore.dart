import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../widgets/custom_widgets/custom_app_bar.dart";
import "../widgets/views/scrollable_view.dart";
import "../widgets/cards/animal_category_card.dart";

import "../consts/styles/app_styles/app_colors.dart";
import "../consts/data/screen_space.dart";
import "../consts/data/animal_categories.dart";

import "../utilities/handlers/decoration_handler.dart";


class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(screenIcon: Icons.explore),
      body: Container(
        padding: screenPadding,
        decoration: DecorationHandler.setImageDecoration("explore_background.png"),
        child: Center(
          child: ScrollableView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _getAnimalCategoryCards(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _getAnimalCategoryCards() {
    List<String> animalCategories = AnimalCategories.getAsList();
    List<Widget> cards = [];

    for (int i = 0; i < animalCategories.length; i++) {
      Widget animalCategoryCard = Column(
        children: <Widget> [
          AnimalCategoryCard(
            category: animalCategories[i],
            interactive: true,
            labelVisible: true,
            width: 92.w,
            height: 40.h,
          ),
          SizedBox(height: 6.h),
        ],
      );

      cards.add(animalCategoryCard);
    }

    return cards;
  }
}
