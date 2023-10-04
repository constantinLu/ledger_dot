import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:ledgerdot/presentation/view/income/income_model.dart';
import 'package:ledgerdot/presentation/view/income/tabs/client/client_capture_view.dart';
import 'package:ledgerdot/presentation/view/income/tabs/invoice/invoices_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

class IncomeView extends StatelessWidget {
  final int tabId;

  const IncomeView({
    super.key,
    @pathParam required this.tabId,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<IncomeModel>.reactive(
      viewModelBuilder: () => IncomeModel(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: DefaultTabController(
            initialIndex: tabId,
            length: 6,
            child: Column(
              children: <Widget>[
                ButtonsTabBar(
                  backgroundColor: Colors.red,
                  unselectedBackgroundColor: Colors.grey[300],
                  unselectedLabelStyle: const TextStyle(color: Colors.black),
                  labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  tabs: [
                    const Tab(
                      icon: Icon(Icons.list_rounded),
                      text: "Income list",
                    ),
                    const Tab(
                      icon: Icon(Icons.add_photo_alternate),
                      text: "Add Invoice",
                    ),
                    const Tab(
                      icon: Icon(Icons.settings),
                      text: "Invoice Configuration",
                    ),
                    const Tab(
                      icon: Icon(Icons.people),
                      text: "Clients",
                    ),
                    const Tab(
                      icon: Icon(Icons.person_add),
                      text: "Add Client",
                    ),
                    const Tab(
                      icon: Icon(Icons.handyman),
                      text: "Client configuration",
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      Center(
                        child: Icon(Icons.add_box),
                      ),
                      AddInvoice(),
                      Center(
                        child: Icon(Icons.settings),
                      ),
                      Center(
                        child: Icon(Icons.call),
                      ),
                      ClientCaptureView(),
                      Center(
                        child: Icon(Icons.two_wheeler_outlined),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
