import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import "../../consts/styles/app_styles/app_shape_decorations.dart";
import "../../consts/styles/app_styles/app_button_styles.dart";
import "../../consts/styles/app_styles/app_colors.dart";

import "../../utilities/handlers/audio_handler.dart";


class SoundButton extends StatefulWidget {
  final String soundPath;
  final double? volume;
  final double? width;
  final double? height;

  const SoundButton({
    super.key,
    required this.soundPath,
    this.volume,
    this.width,
    this.height,
  });

  @override
  State<SoundButton> createState() => _SoundButtonState();
}

class _SoundButtonState extends State<SoundButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 26.w,
      height: widget.height ?? 13.h,
      decoration: AppShapeDecorations.defaultDecoration,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0.w),
        child: IconButton(
          onPressed: () => AudioHandler.playAudio(widget.soundPath, widget.volume ?? 0.5),
          icon: Icon(Icons.volume_up,
              size: (widget.width ?? 26.w) / 1.5,
              color: AppColors.primaryColor
          ),
          style: AppButtonStyles.soundButton,
        ),
      ),
    );
  }
}
