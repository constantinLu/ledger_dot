import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:ledgerdot/presentation/view/home/home_model.dart';
import 'package:ledgerdot/presentation/view/income/income_model.dart';
import 'package:ledgerdot/presentation/view/income/tabs/client/client_capture/client_capture_view.dart';
import 'package:ledgerdot/presentation/view/income/tabs/client/client_view/client_view.dart';
import 'package:ledgerdot/presentation/view/income/tabs/invoice/invoice_capture/invoice_capture_view.dart';
import 'package:raven/raven.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

class IncomeView extends StatelessWidget {
  final int tabId;

  const IncomeView({super.key, @queryParam this.tabId = 0});

  @override
  Widget build(BuildContext context) {
    var homeModel = HomeModel();
    return ViewModelBuilder<IncomeModel>.reactive(
      viewModelBuilder: () => IncomeModel(),
      builder: (context, model, child) => Scaffold(
        body: buildDefaultTabController(),
      ),
    );
  }

  DefaultTabController buildDefaultTabController() {
    return DefaultTabController(
      initialIndex: tabId,
      length: 6,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //TODO: fix this for the theme
            ButtonsTabBar(
              physics: const AlwaysScrollableScrollPhysics(),
              backgroundColor: kcWhiteSnow,
              unselectedBackgroundColor: kcYoutubeGrey,
              unselectedLabelStyle: const TextStyle(color: kcWhitePure),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              labelStyle: const TextStyle(color: kcBlackErie),
              labelSpacing: 5,
              tabs: const [
                Tab(
                  text: "Income list",
                  icon: Icon(Icons.label_important),
                ),
                Tab(
                  icon: Icon(Icons.add_photo_alternate),
                  text: "Add Invoice",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Invoice Configuration",
                ),
                Tab(
                  icon: Icon(Icons.people),
                  text: "Clients",
                ),
                Tab(
                  icon: Icon(Icons.person_add),
                  text: "Add Client",
                ),
                Tab(
                  icon: Icon(Icons.handyman),
                  text: "Client configuration",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  /// INVOICE
                  Center(
                    child: Icon(Icons.add_box),
                  ),
                  InvoiceCaptureView(),
                  Center(child: Icon(Icons.settings)),

                  /// CLIENT
                  ClientView(),
                  ClientCaptureView(),
                  Center(child: Icon(Icons.two_wheeler_outlined)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
