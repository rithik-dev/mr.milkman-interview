import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:milkman_interview/app_config.dart';
import 'package:milkman_interview/controllers/theme_controller.dart';
import 'package:milkman_interview/screens/splash_screen.dart';
import 'package:milkman_interview/services/local_storage.dart';
import 'package:milkman_interview/utils/globals.dart';
import 'package:milkman_interview/utils/route_generator.dart';
import 'package:milkman_interview/widgets/flutter_error_widget.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // set custom error page
  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
    return FlutterErrorWidget(errorDetails: errorDetails);
  };

  // initialize
  await Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]),
    LocalStorage.initialize(),
  ]);

  // end
  FlutterNativeSplash.remove();
}

class MainApp extends StatelessWidget {
  const MainApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = AppConfig.of(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeController>(
          create: (_) => ThemeController(),
        ),
      ],
      builder: (context, _) => MaterialApp(
        title: config.appDisplayName,
        debugShowCheckedModeBanner: false,
        builder: _appBuilder,
        scrollBehavior: const _DefaultScrollBehavior(),
        theme: config.theme,
        darkTheme: config.theme,
        themeMode: ThemeController.of(context).themeMode,
        navigatorKey: Globals.navigatorKey,
        scaffoldMessengerKey: Globals.scaffoldMessengerKey,
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: SplashScreen.id,
      ),
    );
  }

  Widget _appBuilder(BuildContext context, Widget? child) {
    final appBarOverlayStyle = Theme.of(context).appBarTheme.systemOverlayStyle;
    if (appBarOverlayStyle != null) {
      SystemChrome.setSystemUIOverlayStyle(appBarOverlayStyle);
    }

    return child!;
  }
}

class _DefaultScrollBehavior extends ScrollBehavior {
  const _DefaultScrollBehavior({
    AndroidOverscrollIndicator? androidOverscrollIndicator,
  }) : super(androidOverscrollIndicator: androidOverscrollIndicator);

  @override
  Widget buildViewportChrome(_, child, __) => child;
}
