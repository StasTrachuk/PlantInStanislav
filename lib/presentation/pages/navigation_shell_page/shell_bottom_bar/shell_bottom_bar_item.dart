import 'package:flutter/cupertino.dart';
import 'package:plant_in_stanislav/core/constants/app_text_styles.dart';
import 'package:plant_in_stanislav/presentation/pages/navigation_shell_page/shell_bottom_bar/shell_bottom_bar.dart';
import 'package:plant_in_stanislav/presentation/theme/theme_extention.dart';

class ShellBottomBarItem extends StatelessWidget {
  final HomeNavigationItemData itemData;
  final VoidCallback onTap;
  final bool isSelected;

  const ShellBottomBarItem({
    super.key,
    required this.itemData,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 3),
          Icon(
            itemData.icon,
            size: 24,
            color: isSelected ? context.theme.iconTheme.primary : context.theme.iconTheme.inactive,
          ),
          SizedBox(height: 4),
          Text(
            itemData.title,
            style: AppTextStyles.w500s12.copyWith(
              color: isSelected ? context.theme.textSecondary : context.theme.textInactive,
            ),
          ),
          SizedBox(height: 2),
        ],
      ),
    );
  }
}
