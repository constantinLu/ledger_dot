// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i13;
import 'package:stacked/stacked.dart' as _i12;
import 'package:stacked_services/stacked_services.dart' as _i11;

import '../../../presentation/view/banking/banking_view.dart' as _i6;
import '../../../presentation/view/dashboard/dashboard_view.dart' as _i2;
import '../../../presentation/view/document/document_view.dart' as _i9;
import '../../../presentation/view/expense/expense_view.dart' as _i4;
import '../../../presentation/view/home/home_view.dart' as _i1;
import '../../../presentation/view/income/income_view.dart' as _i3;
import '../../../presentation/view/payroll/payroll_view.dart' as _i7;
import '../../../presentation/view/report/analytics_view.dart' as _i5;
import '../../../presentation/view/settings/setting_view.dart' as _i10;
import '../../../presentation/view/tax/tax_view.dart' as _i8;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i11.StackedService.navigatorKey);

class StackedRouterWeb extends _i12.RootStackRouter {
  StackedRouterWeb({_i13.GlobalKey<_i13.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeViewArgs>(orElse: () => const HomeViewArgs());
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: _i1.HomeView(
          key: args.key,
          viewIndex: args.viewIndex,
          tabIndex: args.tabIndex,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardViewRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardViewArgs>(
          orElse: () => const DashboardViewArgs());
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.DashboardView(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    IncomeViewRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<IncomeViewArgs>(
          orElse: () => IncomeViewArgs(
                  tabId: queryParams.getInt(
                'tabId',
                0,
              )));
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: _i3.IncomeView(
          key: args.key,
          tabId: args.tabId,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ExpenseViewRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.ExpenseView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AnalyticsViewRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.AnalyticsView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    BankViewRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.BankView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    PayrollViewRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.PayrollView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    TaxViewRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.TaxView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DocumentViewRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentViewArgs>(
          orElse: () => const DocumentViewArgs());
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.DocumentView(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    SettingViewRoute.name: (routeData) {
      final args = routeData.argsAs<SettingViewArgs>(
          orElse: () => const SettingViewArgs());
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: _i10.SettingView(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        _i12.RouteConfig(
          HomeViewRoute.name,
          path: '/home',
          children: [
            _i12.RouteConfig(
              DashboardViewRoute.name,
              path: 'dashboard',
              parent: HomeViewRoute.name,
            ),
            _i12.RouteConfig(
              IncomeViewRoute.name,
              path: 'income',
              parent: HomeViewRoute.name,
            ),
            _i12.RouteConfig(
              ExpenseViewRoute.name,
              path: 'expense-view',
              parent: HomeViewRoute.name,
            ),
            _i12.RouteConfig(
              AnalyticsViewRoute.name,
              path: 'analytics-view',
              parent: HomeViewRoute.name,
            ),
            _i12.RouteConfig(
              BankViewRoute.name,
              path: 'bank-view',
              parent: HomeViewRoute.name,
            ),
            _i12.RouteConfig(
              PayrollViewRoute.name,
              path: 'payroll-view',
              parent: HomeViewRoute.name,
            ),
            _i12.RouteConfig(
              TaxViewRoute.name,
              path: 'tax-view',
              parent: HomeViewRoute.name,
            ),
            _i12.RouteConfig(
              DocumentViewRoute.name,
              path: 'document-view',
              parent: HomeViewRoute.name,
            ),
            _i12.RouteConfig(
              SettingViewRoute.name,
              path: 'setting-view',
              parent: HomeViewRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeViewRoute extends _i12.PageRouteInfo<HomeViewArgs> {
  HomeViewRoute({
    _i13.Key? key,
    int viewIndex = 0,
    int tabIndex = 0,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          HomeViewRoute.name,
          path: '/home',
          args: HomeViewArgs(
            key: key,
            viewIndex: viewIndex,
            tabIndex: tabIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeView';
}

class HomeViewArgs {
  const HomeViewArgs({
    this.key,
    this.viewIndex = 0,
    this.tabIndex = 0,
  });

  final _i13.Key? key;

  final int viewIndex;

  final int tabIndex;

  @override
  String toString() {
    return 'HomeViewArgs{key: $key, viewIndex: $viewIndex, tabIndex: $tabIndex}';
  }
}

/// generated route for
/// [_i2.DashboardView]
class DashboardViewRoute extends _i12.PageRouteInfo<DashboardViewArgs> {
  DashboardViewRoute({_i13.Key? key})
      : super(
          DashboardViewRoute.name,
          path: 'dashboard',
          args: DashboardViewArgs(key: key),
        );

  static const String name = 'DashboardView';
}

class DashboardViewArgs {
  const DashboardViewArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'DashboardViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.IncomeView]
class IncomeViewRoute extends _i12.PageRouteInfo<IncomeViewArgs> {
  IncomeViewRoute({
    _i13.Key? key,
    int tabId = 0,
  }) : super(
          IncomeViewRoute.name,
          path: 'income',
          args: IncomeViewArgs(
            key: key,
            tabId: tabId,
          ),
          rawQueryParams: {'tabId': tabId},
        );

  static const String name = 'IncomeView';
}

class IncomeViewArgs {
  const IncomeViewArgs({
    this.key,
    this.tabId = 0,
  });

  final _i13.Key? key;

  final int tabId;

  @override
  String toString() {
    return 'IncomeViewArgs{key: $key, tabId: $tabId}';
  }
}

/// generated route for
/// [_i4.ExpenseView]
class ExpenseViewRoute extends _i12.PageRouteInfo<void> {
  const ExpenseViewRoute()
      : super(
          ExpenseViewRoute.name,
          path: 'expense-view',
        );

  static const String name = 'ExpenseView';
}

/// generated route for
/// [_i5.AnalyticsView]
class AnalyticsViewRoute extends _i12.PageRouteInfo<void> {
  const AnalyticsViewRoute()
      : super(
          AnalyticsViewRoute.name,
          path: 'analytics-view',
        );

  static const String name = 'AnalyticsView';
}

/// generated route for
/// [_i6.BankView]
class BankViewRoute extends _i12.PageRouteInfo<void> {
  const BankViewRoute()
      : super(
          BankViewRoute.name,
          path: 'bank-view',
        );

  static const String name = 'BankView';
}

/// generated route for
/// [_i7.PayrollView]
class PayrollViewRoute extends _i12.PageRouteInfo<void> {
  const PayrollViewRoute()
      : super(
          PayrollViewRoute.name,
          path: 'payroll-view',
        );

  static const String name = 'PayrollView';
}

/// generated route for
/// [_i8.TaxView]
class TaxViewRoute extends _i12.PageRouteInfo<void> {
  const TaxViewRoute()
      : super(
          TaxViewRoute.name,
          path: 'tax-view',
        );

  static const String name = 'TaxView';
}

/// generated route for
/// [_i9.DocumentView]
class DocumentViewRoute extends _i12.PageRouteInfo<DocumentViewArgs> {
  DocumentViewRoute({_i13.Key? key})
      : super(
          DocumentViewRoute.name,
          path: 'document-view',
          args: DocumentViewArgs(key: key),
        );

  static const String name = 'DocumentView';
}

class DocumentViewArgs {
  const DocumentViewArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'DocumentViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.SettingView]
class SettingViewRoute extends _i12.PageRouteInfo<SettingViewArgs> {
  SettingViewRoute({_i13.Key? key})
      : super(
          SettingViewRoute.name,
          path: 'setting-view',
          args: SettingViewArgs(key: key),
        );

  static const String name = 'SettingView';
}

class SettingViewArgs {
  const SettingViewArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'SettingViewArgs{key: $key}';
  }
}

extension RouterStateExtension on _i11.RouterService {
  Future<dynamic> navigateToHomeView({
    _i13.Key? key,
    int viewIndex = 0,
    int tabIndex = 0,
    void Function(_i12.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      HomeViewRoute(
        key: key,
        viewIndex: viewIndex,
        tabIndex: tabIndex,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToDashboardView({
    _i13.Key? key,
    void Function(_i12.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      DashboardViewRoute(
        key: key,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToIncomeView({
    _i13.Key? key,
    int tabId = 0,
    void Function(_i12.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      IncomeViewRoute(
        key: key,
        tabId: tabId,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToExpenseView(
      {void Function(_i12.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const ExpenseViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToAnalyticsView(
      {void Function(_i12.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AnalyticsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToBankView(
      {void Function(_i12.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const BankViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToPayrollView(
      {void Function(_i12.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const PayrollViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToTaxView(
      {void Function(_i12.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const TaxViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToDocumentView({
    _i13.Key? key,
    void Function(_i12.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      DocumentViewRoute(
        key: key,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToSettingView({
    _i13.Key? key,
    void Function(_i12.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      SettingViewRoute(
        key: key,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView({
    _i13.Key? key,
    int viewIndex = 0,
    int tabIndex = 0,
    void Function(_i12.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      HomeViewRoute(
        key: key,
        viewIndex: viewIndex,
        tabIndex: tabIndex,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithDashboardView({
    _i13.Key? key,
    void Function(_i12.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      DashboardViewRoute(
        key: key,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithIncomeView({
    _i13.Key? key,
    int tabId = 0,
    void Function(_i12.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      IncomeViewRoute(
        key: key,
        tabId: tabId,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithExpenseView(
      {void Function(_i12.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const ExpenseViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAnalyticsView(
      {void Function(_i12.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AnalyticsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithBankView(
      {void Function(_i12.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const BankViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithPayrollView(
      {void Function(_i12.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const PayrollViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithTaxView(
      {void Function(_i12.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const TaxViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithDocumentView({
    _i13.Key? key,
    void Function(_i12.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      DocumentViewRoute(
        key: key,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSettingView({
    _i13.Key? key,
    void Function(_i12.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      SettingViewRoute(
        key: key,
      ),
      onFailure: onFailure,
    );
  }
}
