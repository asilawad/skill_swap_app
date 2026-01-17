import 'package:flutter/material.dart';
import 'package:skill_swap_app/core/config/responsive/responsive_layout.dart';

class VerticalSpaceWidget extends StatelessWidget {
  const VerticalSpaceWidget(this.percentage, {super.key});
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: context.hp(percentage));
  }
}
