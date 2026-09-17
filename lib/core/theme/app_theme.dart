import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.accent,
        surface: AppColors.surface,
        error: AppColors.error,
        onPrimary: Colors.white,
        onSurface: AppColors.textPrimary,
      ),
      textTheme: const TextTheme(
        headlineLarge: AppTypography.display,
        headlineMedium: AppTypography.heading,
        bodyLarge: AppTypography.body,
        bodyMedium: AppTypography.label,
        bodySmall: AppTypography.caption,
        labelMedium: AppTypography.skillTag,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.icon,
        size: 24.0,
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.divider,
        thickness: 1,
      ),
    );
  }

  // Backwards compatibility alias
  static ThemeData get light => dark;
}
