import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../buttons/sound_button.dart";
import "info_card.dart";

import "../../data_models/animal_model.dart";


class AnimalCard extends InfoCard {
  final AnimalModel animal;
  final bool soundButtonVisible;

  const AnimalCard({
    super.key,
    required this.animal,
    this.soundButtonVisible = false,
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
    return Stack(
      children: [
        setCardInfo(
          animal.imagePath,
          animal.name,
          () => _routeToAnimalInfo(context),
        ),

        if (soundButtonVisible) Positioned(
          top: 0,
          right: 0,
          child: SoundButton(soundPath: animal.soundPath, width: 13.w, height: 6.5.h),
        ),
      ],
    );
  }

  void _routeToAnimalInfo(BuildContext context) {
    Navigator.pushNamed(context, "/animal_info", arguments: animal);
  }
}
