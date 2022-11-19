import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:re_web/utils/utils.dart';
import 'package:re_web/views/home_detail_screen/home_detail_screen.dart';
import 'package:re_web/views/home_screen/home_screen.dart';
import 'package:re_web/views/login_screen/login_screen.dart';

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    printLog("onGenerateRoute", message: "$settings");
    switch (settings.name) {
      case HomeScreen.id:
        return CupertinoPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );
      case HomeDetailScreen.id:
        return CupertinoPageRoute(
          builder: (_) => const HomeDetailScreen(),
          settings: settings,
        );
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      ),
      settings: const RouteSettings(
        name: '/error',
      ),
    );
  }
}

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
