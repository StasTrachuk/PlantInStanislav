import 'package:flutter/widgets.dart';
import 'package:plant_in_stanislav/presentation/pages/navigation_shell_page/widgets/theme_inherited.dart';
import 'package:plant_in_stanislav/presentation/theme/app_theme.dart';

extension ThemeExtention on BuildContext {
  AppTheme get theme => ThemeInherited.of(this).appTheme;
}
