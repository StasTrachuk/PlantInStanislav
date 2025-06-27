import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:plant_in_stanislav/presentation/pages/navigation_shell_page/widgets/theme_inherited.dart';
import 'package:plant_in_stanislav/presentation/theme/app_theme.dart';

class ThemeWraper extends StatefulWidget {
  final Widget child;

  const ThemeWraper({super.key, required this.child});

  @override
  State<ThemeWraper> createState() => _ThemeWraperState();
}

class _ThemeWraperState extends State<ThemeWraper> {
  late AppTheme _theme;

  @override
  void initState() {
    _updateTheme();

    SchedulerBinding.instance.platformDispatcher.onPlatformBrightnessChanged = _updateTheme;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeInherited(
      appTheme: _theme,
      child: widget.child,
    );
  }

  _updateTheme() {
    setState(() {
      _theme = switch (SchedulerBinding.instance.platformDispatcher.platformBrightness) {
        Brightness.dark => AppTheme.dark,
        Brightness.light => AppTheme.light,
      };
    });
  }
}
