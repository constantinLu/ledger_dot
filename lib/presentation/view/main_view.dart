import 'package:flutter/material.dart';
import 'package:ledgerdot/infrastructure/setup/router/app.router.dart';
import 'package:ledgerdot/infrastructure/setup/theme_setup.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../../infrastructure/setup/router/app.locator.dart';
import '../../package/sizeup.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final _themeService = locator<ThemeService>();

  @override
  Widget build(BuildContext context) {
    return Sizeup(builder: (BuildContext context, Orientation orientation, deviceType) {
      return ThemeBuilder(
        themes: getThemes(),
        statusBarColorBuilder: (theme) => Colors.yellow,
        darkTheme: darkTheme,
        lightTheme: lightTheme,
        defaultThemeMode: ThemeMode.light,
        builder: (context, defaultTheme, darkTheme, themeMode) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Ledger: Business management & Invoicing',
          theme: defaultTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          routerDelegate: stackedRouter.delegate(),
          routeInformationParser: stackedRouter.defaultRouteParser(),
        ),
      );
    });
  }
}
