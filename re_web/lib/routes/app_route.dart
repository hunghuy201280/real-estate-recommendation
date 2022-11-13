import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:re_web/utils/utils.dart';
import 'package:re_web/views/home_screen/home_screen.dart';

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    printLog("onGenerateRoute", message: "$settings");
    switch (settings.name) {
      case HomeScreen.id:
        return CupertinoPageRoute(
          builder: (_) => const HomeScreen(),
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
