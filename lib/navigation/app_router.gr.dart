// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BookListRoute.name: (routeData) {
      final args = routeData.argsAs<BookListRouteArgs>();
      return AutoRoutePage<bool?>(
        routeData: routeData,
        child: BookListView(
          key: args.key,
          book: args.book,
        ),
      );
    },
    ClosedRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ClosedView(),
      );
    },
    DashboardRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardView(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    OpenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OpenView(),
      );
    },
    PostsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PostsView(),
      );
    },
    SettinggRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettinggView(),
      );
    },
    SettingsDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SettingsDetailRouteArgs>(
          orElse: () => SettingsDetailRouteArgs(id: pathParams.getInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingsDetailView(
          key: args.key,
          id: args.id,
        ),
      );
    },
    SettingsRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsRouteView(),
      );
    },
    SnackBarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SnackBarView(),
      );
    },
    UserRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserView(),
      );
    },
  };
}

/// generated route for
/// [BookListView]
class BookListRoute extends PageRouteInfo<BookListRouteArgs> {
  BookListRoute({
    Key? key,
    required String book,
    List<PageRouteInfo>? children,
  }) : super(
          BookListRoute.name,
          args: BookListRouteArgs(
            key: key,
            book: book,
          ),
          initialChildren: children,
        );

  static const String name = 'BookListRoute';

  static const PageInfo<BookListRouteArgs> page =
      PageInfo<BookListRouteArgs>(name);
}

class BookListRouteArgs {
  const BookListRouteArgs({
    this.key,
    required this.book,
  });

  final Key? key;

  final String book;

  @override
  String toString() {
    return 'BookListRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [ClosedView]
class ClosedRoute extends PageRouteInfo<void> {
  const ClosedRoute({List<PageRouteInfo>? children})
      : super(
          ClosedRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClosedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardView]
class DashboardRouter extends PageRouteInfo<void> {
  const DashboardRouter({List<PageRouteInfo>? children})
      : super(
          DashboardRouter.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OpenView]
class OpenRoute extends PageRouteInfo<void> {
  const OpenRoute({List<PageRouteInfo>? children})
      : super(
          OpenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OpenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PostsView]
class PostsRoute extends PageRouteInfo<void> {
  const PostsRoute({List<PageRouteInfo>? children})
      : super(
          PostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettinggView]
class SettinggRoute extends PageRouteInfo<void> {
  const SettinggRoute({List<PageRouteInfo>? children})
      : super(
          SettinggRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettinggRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsDetailView]
class SettingsDetailRoute extends PageRouteInfo<SettingsDetailRouteArgs> {
  SettingsDetailRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          SettingsDetailRoute.name,
          args: SettingsDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'SettingsDetailRoute';

  static const PageInfo<SettingsDetailRouteArgs> page =
      PageInfo<SettingsDetailRouteArgs>(name);
}

class SettingsDetailRouteArgs {
  const SettingsDetailRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'SettingsDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [SettingsRouteView]
class SettingsRouter extends PageRouteInfo<void> {
  const SettingsRouter({List<PageRouteInfo>? children})
      : super(
          SettingsRouter.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SnackBarView]
class SnackBarRoute extends PageRouteInfo<void> {
  const SnackBarRoute({List<PageRouteInfo>? children})
      : super(
          SnackBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'SnackBarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserView]
class UserRoute extends PageRouteInfo<void> {
  const UserRoute({List<PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
