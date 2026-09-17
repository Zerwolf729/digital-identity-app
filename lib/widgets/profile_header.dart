import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_spacing.dart';
import '../core/theme/app_typography.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.border,
                width: 3.0,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                'img/profile-picture.png',
                fit: BoxFit.cover,
                width: 110,
                height: 110,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 110,
                    height: 110,
                    color: AppColors.surfaceSecondary,
                    child: const Icon(
                      Icons.person,
                      size: 60,
                      color: AppColors.icon,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          const Text(
            'Samuel Julian Kumaat',
            style: AppTypography.heading,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.xs),
          const Text(
            'NIM: 2411041',
            style: AppTypography.caption,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.md),
          _buildStudyProgramBadge(),
        ],
      ),
    );
  }

  Widget _buildStudyProgramBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: AppColors.badgeBg,
        borderRadius: BorderRadius.circular(999),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.school_outlined,
            size: 16,
            color: AppColors.badgeText,
          ),
          SizedBox(width: AppSpacing.xs),
          Text(
            'Informatika',
            style: AppTypography.badge,
          ),
        ],
      ),
    );
  }
}
