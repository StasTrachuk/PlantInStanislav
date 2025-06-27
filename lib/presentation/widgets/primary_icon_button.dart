import 'package:flutter/cupertino.dart';
import 'package:plant_in_stanislav/presentation/theme/theme_extention.dart';

class PrimaryIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;

  const PrimaryIconButton({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: context.theme.iconButtonPrimary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 24,
          color: context.theme.iconTheme.primary,
        ),
      ),
    );
  }
}
