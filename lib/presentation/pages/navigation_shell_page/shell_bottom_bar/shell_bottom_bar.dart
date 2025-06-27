import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:plant_in_stanislav/core/constants/app_icons.dart';
import 'package:plant_in_stanislav/presentation/pages/navigation_shell_page/shell_bottom_bar/shell_bottom_bar_item.dart';
import 'package:plant_in_stanislav/presentation/pages/navigation_shell_page/widgets/pick_coin_button.dart';
import 'package:plant_in_stanislav/presentation/theme/theme_extention.dart';

final class HomeNavigationItemData extends Equatable {
  final String title;
  final IconData icon;

  const HomeNavigationItemData({required this.title, required this.icon});

  @override
  List<Object?> get props => [title, icon];
}

const List<HomeNavigationItemData> shellBottomBarItems = [
  HomeNavigationItemData(title: 'Home', icon: AppIcons.home),
  HomeNavigationItemData(title: 'Search', icon: AppIcons.search),
  HomeNavigationItemData(title: 'History', icon: AppIcons.clock),
  HomeNavigationItemData(title: 'Collection', icon: AppIcons.list),
];

class ShellBottomBar extends StatelessWidget {
  final int activePageIndex;
  final void Function(int index) onItemTap;

  const ShellBottomBar({super.key, required this.activePageIndex, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 80,
                color: context.theme.shadowColor.withValues(alpha: 0.16),
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            color: context.theme.navigationBarColor,
          ),
          child: SafeArea(
            top: false,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  shellBottomBarItems.length,
                  (index) => Expanded(
                    child: ShellBottomBarItem(
                      itemData: shellBottomBarItems[index],
                      isSelected: index == activePageIndex,
                      onTap: () {
                        onItemTap(index);
                      },
                    ),
                  ),
                  //Add space for image picker button
                )..insert(2, SizedBox(width: 70)),
              ),
            ),
          ),
        ),
        PickCoinButton(),
      ],
    );
  }
}
