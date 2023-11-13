import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:main/main.dart';
import 'package:domain/domain.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainScreen, path: 'main_screen', initial: true),
    AutoRoute(page: SelectedUserScreen, path: 'selected_user_screen'),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
