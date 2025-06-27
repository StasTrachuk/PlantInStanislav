import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_in_stanislav/core/service_locator.dart';
import 'package:plant_in_stanislav/presentation/blocs/image_picker_bloc/image_picker_bloc.dart';
import 'package:plant_in_stanislav/presentation/pages/navigation_shell_page/shell_bottom_bar/shell_bottom_bar.dart';
import 'package:plant_in_stanislav/presentation/theme/theme_extention.dart';

class NavigationShellPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const NavigationShellPage({required this.navigationShell, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ImagePickerBloc>(),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: context.theme.backgroundGradient),
          child: Stack(
            children: [
              Positioned.fill(child: navigationShell),
              Align(
                alignment: Alignment.bottomCenter,
                child: ShellBottomBar(
                  activePageIndex: navigationShell.currentIndex,
                  onItemTap: _navigateToPage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToPage(int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }
}
