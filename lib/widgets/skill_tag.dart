import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_spacing.dart';
import '../core/theme/app_typography.dart';

class SkillTag extends StatelessWidget {
  final String label;

  const SkillTag({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: AppColors.skillBg,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(label, style: AppTypography.skillTag),
    );
  }
}
