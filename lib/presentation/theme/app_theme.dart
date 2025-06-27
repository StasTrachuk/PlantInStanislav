import 'package:flutter/material.dart';
import 'package:plant_in_stanislav/presentation/theme/app_colors.dart';

@immutable
class AppTheme {
  final Color navigationBarColor;
  final AppIconTheme iconTheme;
  final LinearGradient backgroundGradient;
  final LinearGradient bannerGradient;

  final Color textPrimary;
  final Color textSecondary;
  final Color textInactive;

  final Color shadowColor;

  final Color iconButtonPrimary;
  final Color buttonBackgroundPrimary;
  final Color cardColor;

  const AppTheme({
    required this.navigationBarColor,
    required this.iconTheme,
    required this.textPrimary,
    required this.textSecondary,
    required this.iconButtonPrimary,
    required this.textInactive,
    required this.backgroundGradient,
    required this.shadowColor,
    required this.bannerGradient,
    required this.buttonBackgroundPrimary,
    required this.cardColor,
  });

  static const light = AppTheme(
    navigationBarColor: AppColors.pureWhite,
    iconTheme: AppIconTheme.light(),
    textPrimary: AppColors.jetBlack,
    textSecondary: AppColors.saffronGold,
    textInactive: AppColors.mistyBlue,
    backgroundGradient: AppColors.gradient4,
    shadowColor: AppColors.jetBlack,
    bannerGradient: AppColors.gradient1,
    iconButtonPrimary: AppColors.saffronGold,
    buttonBackgroundPrimary: AppColors.pureWhite,
    cardColor: AppColors.ivoryCream,
  );

  static const dark = AppTheme(
    navigationBarColor: AppColors.twilight,
    iconTheme: AppIconTheme.dark(),
    textPrimary: AppColors.pureWhite,
    textSecondary: AppColors.saffronGold,
    iconButtonPrimary: AppColors.saffronGold,
    textInactive: AppColors.mistyBlue,
    backgroundGradient: AppColors.gradient2,
    shadowColor: AppColors.jetBlack,
    bannerGradient: AppColors.gradient3,
    buttonBackgroundPrimary: AppColors.twilight,
    cardColor: AppColors.darkCocoa,
  );
}

@immutable
class AppIconTheme {
  final Color primary;
  final Color secondary;
  final Color inactive;

  const AppIconTheme({
    required this.primary,
    required this.secondary,
    required this.inactive,
  });

  const AppIconTheme.light({
    this.primary = AppColors.saffronGold,
    this.secondary = AppColors.pureWhite,
    this.inactive = AppColors.mistyBlue,
  });

  const AppIconTheme.dark({
    this.primary = AppColors.saffronGold,
    this.secondary = AppColors.pureWhite,
    this.inactive = AppColors.mistyBlue,
  });

  AppIconTheme copyWith({
    Color? primary,
    Color? secondary,
    Color? inactive,
  }) {
    return AppIconTheme(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      inactive: inactive ?? this.inactive,
    );
  }
}
