import 'package:auto_route/auto_route.dart';
import 'package:autoroute/screens/book_list_view.dart';
import 'package:autoroute/screens/home_view.dart';
import 'package:autoroute/screens/nested/dashboard_view.dart';
import 'package:autoroute/screens/nested/subfiles/nested_settings/settings_detail_view.dart';
import 'package:autoroute/screens/nested/subfiles/nested_settings/settings_nested_route_view.dart';
import 'package:autoroute/screens/nested/subfiles/posts_view.dart';
import 'package:autoroute/screens/nested/subfiles/settings_view.dart';
import 'package:autoroute/screens/nested/subfiles/user/tabs/closed_view.dart';
import 'package:autoroute/screens/nested/subfiles/user/tabs/open_view.dart';
import 'package:autoroute/screens/nested/subfiles/user/users_view.dart';
import 'package:autoroute/snackbar/snack_bar.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "View,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/dashboard',
          page: DashboardRouter.page,
          children: [
            RedirectRoute(path: "", redirectTo: "users"),
            AutoRoute(path: 'users', page: UserRoute.page,  children: [
              AutoRoute(path: 'open', page: OpenRoute.page),
              AutoRoute(path: 'closed', page: ClosedRoute.page),
            ]),
            AutoRoute(path: 'posts', page: PostsRoute.page),
            AutoRoute(path: "settings", page: SettingsRouter.page, children: [
              RedirectRoute(path: "", redirectTo: "settings"),
              AutoRoute(path: "", page: SettinggRoute.page, initial: true),
              AutoRoute(path: ':id/detail', page: SettingsDetailRoute.page),
            ]),
          ],
        ),
        AutoRoute(page: HomeRoute.page, initial: false, path: "/home"),
        AutoRoute(page: BookListRoute.page, path: "/book-list"),
        AutoRoute(page: SnackBarRoute.page, path: "/snack-bar"),
      ];
}
