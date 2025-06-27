import 'package:flutter/material.dart';
import 'package:plant_in_stanislav/core/service_locator.dart';
import 'package:plant_in_stanislav/presentation/navigation/app_navigation.dart';
import 'package:plant_in_stanislav/presentation/theme/theme_wraper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ServiceLocator.setupGetIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'CoinIn',
      builder: (context, child) => ThemeWraper(child: child!),
      debugShowCheckedModeBanner: false,
      routerConfig: AppNavigator.router,
    );
  }
}
