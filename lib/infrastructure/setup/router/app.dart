import 'package:flutter/material.dart';
import 'package:ledgerdot/presentation/view/banking/banking_view.dart';
import 'package:ledgerdot/presentation/view/dashboard/dashboard_view.dart';
import 'package:ledgerdot/presentation/view/payroll/payroll_view.dart';
import 'package:ledgerdot/presentation/view/report/analytics_view.dart';
import 'package:ledgerdot/presentation/view/settings/setting_view.dart';
import 'package:ledgerdot/presentation/view/tax/tax_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../../../presentation/view/document/document_view.dart';
import '../../../presentation/view/expense/expense_view.dart';
import '../../../presentation/view/home/home_view.dart';
import '../../../presentation/view/income/income_view.dart';
import '../../service/invoice/invoice_service.dart';
import '../../service/pdf/pdf_service.dart';
import '../../service/pdf/pdf_service_web.dart';

@StackedApp(routes: [
  CustomRoute(page: HomeView, initial: true, children: [
    CustomRoute(
      page: DashboardView,
      path: 'dashboard',
    ),
    CustomRoute(page: IncomeView, path: 'income/:tabId'),
    CustomRoute(page: ExpenseView),
    CustomRoute(page: AnalyticsView),
    CustomRoute(page: BankView),
    CustomRoute(page: PayrollView),
    CustomRoute(page: TaxView),
    CustomRoute(page: DocumentView),
    CustomRoute(page: SettingView),
  ]),
], dependencies: [
  LazySingleton(classType: RouterService),
  LazySingleton(classType: ThemeService, resolveUsing: ThemeService.getInstance),
  LazySingleton(classType: PdfWebService, asType: PdfService),
  LazySingleton(classType: InvoiceService),
])
class Router {}

Widget routeTo(int index) {
  switch (index) {
    case 0:
      return DashboardView();
    case 1:
      return IncomeView(tabId: 0);
    case 2:
      return ExpenseView();
    case 3:
      return AnalyticsView();
    case 4:
      return const BankView();
    case 5:
      return const PayrollView();
    case 6:
      return const TaxView();
    case 7:
    //case 8 is empty (hacky way)
    case 8:
      return DocumentView();
    case 9:
      return SettingView();
    default:
      return DashboardView();
  }
}
