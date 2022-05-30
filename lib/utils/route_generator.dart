import 'package:flutter/material.dart';
import 'package:milkman_interview/screens/home_screen.dart';
import 'package:milkman_interview/screens/splash_screen.dart';
import 'package:milkman_interview/utils/logger.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as dynamic;
    log<RouteGenerator>(msg: "Pushed ${settings.name}(${args ?? ''})");
    switch (settings.name) {
      case SplashScreen.id:
        return _route(const SplashScreen());
      case HomeScreen.id:
        return _route(const HomeScreen());
      default:
        return _errorRoute(settings.name);
    }
  }

  static MaterialPageRoute _route(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);

  static Route<dynamic> _errorRoute(String? name) {
    return _route(
      Scaffold(
        body: Center(
          child: Text('ROUTE\n\n$name\n\nNOT FOUND'),
        ),
      ),
    );
  }
}
