import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../../../infrastructure/setup/router/app.locator.dart';

class HomeModel extends IndexTrackingViewModel {
  final themeService = locator<ThemeService>();
}
