import 'package:flutter/cupertino.dart';
import 'package:plant_in_stanislav/core/constants/app_assets.dart';
import 'package:plant_in_stanislav/core/constants/app_text_styles.dart';
import 'package:plant_in_stanislav/presentation/theme/theme_extention.dart';

class FreePremiumBanner extends StatelessWidget {
  final VoidCallback onTap;

  const FreePremiumBanner({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onTap,
      child: Container(
        height: 70,
        padding: EdgeInsets.all(12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: context.theme.bannerGradient,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Image.asset(AppAssets.bannerCoin),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Free Premium Available',
                    style: AppTextStyles.w400s16.copyWith(color: context.theme.textPrimary),
                  ),
                  Text(
                    'Tap to claim',
                    style: AppTextStyles.w400s12.copyWith(color: context.theme.textPrimary),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
