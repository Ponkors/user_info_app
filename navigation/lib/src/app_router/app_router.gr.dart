// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: MainScreen(),
      );
    },
    SelectedUserRoute.name: (routeData) {
      final args = routeData.argsAs<SelectedUserRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SelectedUserScreen(
          user: args.user,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'main_screen',
          fullMatch: true,
        ),
        RouteConfig(
          MainRoute.name,
          path: 'main_screen',
        ),
        RouteConfig(
          SelectedUserRoute.name,
          path: 'selected_user_screen',
        ),
      ];
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: 'main_screen',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [SelectedUserScreen]
class SelectedUserRoute extends PageRouteInfo<SelectedUserRouteArgs> {
  SelectedUserRoute({
    required UserModel user,
    Key? key,
  }) : super(
          SelectedUserRoute.name,
          path: 'selected_user_screen',
          args: SelectedUserRouteArgs(
            user: user,
            key: key,
          ),
        );

  static const String name = 'SelectedUserRoute';
}

class SelectedUserRouteArgs {
  const SelectedUserRouteArgs({
    required this.user,
    this.key,
  });

  final UserModel user;

  final Key? key;

  @override
  String toString() {
    return 'SelectedUserRouteArgs{user: $user, key: $key}';
  }
}
