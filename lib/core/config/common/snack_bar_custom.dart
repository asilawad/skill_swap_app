import 'package:flutter/material.dart';
import 'package:skill_swap_app/core/config/constants/color_manager.dart';
import 'package:skill_swap_app/core/config/extensions/layout_extention.dart';
import 'package:skill_swap_app/core/config/extensions/text_style_extension.dart';

class SnackBarCustom {
  SnackBarCustom._();

  static showSnackBarWidget(
    BuildContext context, {
    required String message,
    Color? backgroundColor,
  }) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: backgroundColor ?? ColorManager.redColor,
        content:
            Text(
              message,
              style: context.mRegular.copyWith(color: ColorManager.backgroundWhite),
            ).center(),
      ),
    );
  }
}
