import 'package:flutter/material.dart';
import 'package:skill_swap_app/core/config/responsive/responsive_layout.dart';

class HorizontalSpaceWidget extends StatelessWidget {
  const HorizontalSpaceWidget(this.percentage, {super.key});
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: context.wp(percentage));
  }
}
