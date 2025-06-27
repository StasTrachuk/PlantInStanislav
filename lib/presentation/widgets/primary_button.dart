import 'package:flutter/cupertino.dart';
import 'package:plant_in_stanislav/core/constants/app_text_styles.dart';
import 'package:plant_in_stanislav/presentation/theme/theme_extention.dart';

class PrimaryButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onTap,
      child: Container(
        height: 44,
        width: 189,
        decoration: BoxDecoration(
          color: context.theme.buttonBackgroundPrimary,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 24,
              color: context.theme.iconTheme.primary,
            ),
            SizedBox(width: 8),
            Text(
              text,
              style: AppTextStyles.w600s16.copyWith(color: context.theme.textSecondary),
            ),
          ],
        ),
      ),
    );
  }
}
