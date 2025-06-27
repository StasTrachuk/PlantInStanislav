import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_in_stanislav/core/constants/app_routes.dart';
import 'package:plant_in_stanislav/presentation/pages/collection_page.dart';
import 'package:plant_in_stanislav/presentation/pages/history_page.dart';
import 'package:plant_in_stanislav/presentation/pages/home_page/home_page.dart';
import 'package:plant_in_stanislav/presentation/pages/search_page.dart';
import 'package:plant_in_stanislav/presentation/pages/navigation_shell_page/navigation_shell_page.dart';

class AppNavigator {
  static final _rootNavigationKey = GlobalKey<NavigatorState>();
  static final _homePageKey = GlobalKey<NavigatorState>();
  static final _historyPageKey = GlobalKey<NavigatorState>();
  static final _promptsPageKey = GlobalKey<NavigatorState>();
  static final _settingsPageKey = GlobalKey<NavigatorState>();

  static GoRouter router = GoRouter(
    navigatorKey: _rootNavigationKey,
    initialLocation: AppRoutes.homePage,
    routes: [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _rootNavigationKey,
        builder: (_, state, shell) => PopScope(
          canPop: false,
          child: NavigationShellPage(navigationShell: shell),
        ),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _homePageKey,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.homePage,
                name: AppRoutes.homePage,
                pageBuilder: (_, _) => const CupertinoPage<void>(
                  child: HomePage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _historyPageKey,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.searchPage,
                name: AppRoutes.searchPage,
                pageBuilder: (_, _) => const CupertinoPage<void>(
                  child: SearchPage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _promptsPageKey,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.historyPage,
                name: AppRoutes.historyPage,
                pageBuilder: (_, _) => const CupertinoPage<void>(
                  child: HistoryPage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _settingsPageKey,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.collectionPage,
                name: AppRoutes.collectionPage,
                pageBuilder: (_, _) => const CupertinoPage<void>(
                  child: CollectionPage(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
