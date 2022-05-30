import 'package:flutter/material.dart';
import 'package:milkman_interview/app_config.dart';
import 'package:milkman_interview/main_common.dart';
import 'package:milkman_interview/utils/app_theme.dart';

void main() async {
  final configuredApp = AppConfig(
    appDisplayName: "Client 1",
    theme: AppTheme.lightTheme,
    child: const MainApp(),
  );

  await mainCommon();
  runApp(configuredApp);
}
