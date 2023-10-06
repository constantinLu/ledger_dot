import 'package:ledgerdot/infrastructure/setup/router/app.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../../../infrastructure/setup/router/app.locator.dart';
import '../../../infrastructure/setup/router/app.router.dart';

class HomeModel extends IndexTrackingViewModel {
  final themeService = locator<ThemeService>();
  final routerService = locator<RouterService>();

  bool _useIndex = false;

  bool get useIndex => _useIndex;

  void setUseIndex(bool value) {
    _useIndex = value;
    notifyListeners();
  }

  RouteArgs processRoute(RouteArgs routeArgs) {
    return useIndex
        ? RouteArgs(currentIndex, routeArgs.tabIndex)
        : RouteArgs(routeArgs.viewIndex, routeArgs.tabIndex);
  }

  void navigateToIncome(int tabIndex) async {
    await routerService.navigateTo(
      HomeViewRoute(viewIndex: 1, tabIndex: tabIndex),
    );
  }

}
