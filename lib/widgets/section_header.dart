import 'package:flutter/material.dart';
import '../core/theme/app_typography.dart';
import '../core/theme/app_spacing.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Text(
        title,
        style: AppTypography.heading,
      ),
    );
  }
}
