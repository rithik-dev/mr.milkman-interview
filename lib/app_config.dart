import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  const AppConfig({
    Key? key,
    required this.appDisplayName,
    required this.theme,
    required Widget child,
  }) : super(key: key, child: child);

  final String appDisplayName;
  final ThemeData theme;

  static AppConfig of(BuildContext context) {
    return context.findAncestorWidgetOfExactType<AppConfig>()!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
