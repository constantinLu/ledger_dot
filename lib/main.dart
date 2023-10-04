import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raven/raven.dart';
import 'package:ledgerdot/presentation/view/main_view.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'infrastructure/setup/router/app.locator.dart';
import 'infrastructure/setup/router/app.router.dart';

Future main() async {
  //might need to create a new class for these configs like: AppConfiguration
  WidgetsFlutterBinding.ensureInitialized();
  systemOrientation();

  /// THIS IS REALLY IMPORTANT FOR SETTING UP THE ROUTING AND DEPENDENCY INJECTION
  await setupLocator(stackedRouter: stackedRouter);
  await ThemeManager.initialise();

  Space.init();
  //setup();
  //DbTestData().insertTestData();
  runApp(MainView());
}

Future<void> systemOrientation() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
