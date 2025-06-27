import 'package:flutter/widgets.dart';

class AppColors {
  // Light theme
  static const Color ivoryCream = Color(0xFFF2E9DA);
  static const Color softFlax = Color(0xFFFFF4DF);
  static const Color pureWhite = Color(0xFFFFFFFF);
  static const Color jetBlack = Color(0xFF000000);
  static const Color mistyBlue = Color(0xFF91A0B6);
  static const Color saffronGold = Color(0xFFEDA92D);
  static const Color apricotBlush = Color(0xFFFFE5B7);
  static const Color honeyGold = Color(0xFFFFD382);
  static const Color doveGray = Color(0xFF9B9B9B);

  // Dark theme
  static const Color eclipse = Color(0xFF1F1F27);
  static const Color darkCocoa = Color(0xFF2F251F);
  static const Color twilight = Color(0xFF2C2C34);
  static const Color silverGray = Color(0xFFB0B0B0);
  static const Color rustBrown = Color(0xFF5A3A14);
  static const Color mapleWood = Color(0xFFA86C1D);

  // Gradients
  static const LinearGradient gradient1 = LinearGradient(
    colors: [honeyGold, apricotBlush],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient gradient2 = LinearGradient(
    colors: [eclipse, eclipse],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient gradient3 = LinearGradient(
    colors: [rustBrown, mapleWood],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );

  static const LinearGradient gradient4 = LinearGradient(
    colors: [softFlax, pureWhite],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );
}
