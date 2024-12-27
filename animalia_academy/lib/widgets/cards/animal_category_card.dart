import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../../utilities/extensions/string_extension.dart";

import "info_card.dart";


class AnimalCategoryCard extends InfoCard {
  final String category;

  const AnimalCategoryCard({
    super.key,
    required this.category,
    bool interactive = false,
    bool labelVisible = false,
    double? width,
    double? height,
  }) : super(
    interactive: interactive,
    labelVisible: labelVisible,
    width: width,
    height: height,
  );

  @override
  Widget build(BuildContext context) {
    return setCardInfo(
      "assets/images/animal_categories/${category.toLowerCase()}.png",
      category,
      () => _routeToAnimalSelection(context),
    );
  }

  void _routeToAnimalSelection(BuildContext context) {
    Navigator.pushNamed(context, "/animal_selection", arguments: category);
  }
}
