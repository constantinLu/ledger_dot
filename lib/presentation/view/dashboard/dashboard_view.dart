import 'package:flutter/material.dart';
import 'package:ledgerdot/infrastructure/setup/router/app.locator.dart';
import 'package:ledgerdot/presentation/view/dashboard/dashboard_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../../widget/ledger_logo.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});

  //TODO: IMPORTANT, HOW TO INJECT DEPENDENCIES
  final _themeService = locator<ThemeService>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardModel>.reactive(
      viewModelBuilder: () => DashboardModel(),
      builder: (context, model, child) => GestureDetector(
        onTap: () {
          _themeService.selectThemeAtIndex(0);
          print("index 0");
        },
        child: LedgerLogo(),
      ),
    );
  }
}
