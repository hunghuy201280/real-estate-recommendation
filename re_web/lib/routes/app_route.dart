import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:re_web/views/home_detail_screen/home_detail_screen.dart';
import 'package:re_web/views/home_screen/home_screen.dart';
import 'package:re_web/views/login_screen/login_screen.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: HomeScreen.id,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: LoginScreen.id,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: HomeDetailScreen.id,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeDetailScreen();
      },
    ),
  ],
);
