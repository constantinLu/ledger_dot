import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../../../infrastructure/setup/router/app.locator.dart';

class SettingModel extends IndexTrackingViewModel {
  final themeService = locator<ThemeService>();
}
