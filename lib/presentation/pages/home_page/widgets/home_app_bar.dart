import 'package:flutter/cupertino.dart';
import 'package:plant_in_stanislav/core/constants/app_icons.dart';
import 'package:plant_in_stanislav/core/constants/app_text_styles.dart';
import 'package:plant_in_stanislav/presentation/theme/theme_extention.dart';
import 'package:plant_in_stanislav/presentation/widgets/primary_icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'CoinIn',
              style: AppTextStyles.w600s20.copyWith(color: context.theme.textPrimary),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: PrimaryIconButton(
              icon: AppIcons.settings,
              onTap: () {
                //TODO implement
              },
            ),
          ),
        ],
      ),
    );
  }
}
