import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../infrastructure/setup/router/app.locator.dart';
import '../view/home/home_model.dart';

class FabWidget extends StackedHookView<HomeModel> {
  final routerService = locator<RouterService>();

  @override
  @override
  Widget builder(BuildContext context, HomeModel model) {
    return SpeedDial(
      label: Text("GENERATE"),
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: const IconThemeData(size: 15.0),
      childPadding: const EdgeInsets.all(5),
      elevation: 10,
      spaceBetweenChildren: 5,
      spacing: 10,
      direction: SpeedDialDirection.up,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
      children: [
        SpeedDialChild(
            child: const Icon(Icons.document_scanner),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
            label: 'Generate invoice',
            visible: true,
            onTap: () async {
              // navigate to ClientCaptureTab
              model.navigateToIncome(1);
            }),
        SpeedDialChild(
            label: 'Add client',
            elevation: 20,
            child: const Icon(Icons.cases_sharp),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
            onTap: () async {
              // navigate to ClientCaptureTab
              model.navigateToIncome(4);
            }),
        SpeedDialChild(
          label: 'Add expense',
          child: const Icon(Icons.call_made_sharp),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        SpeedDialChild(
            label: 'Add provider',
            child: const Icon(Icons.add_business),
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
      ],
    );
  }
}
