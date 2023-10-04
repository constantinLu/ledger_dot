import 'package:flutter/material.dart';
import 'package:ledgerdot/presentation/view/report/analytics_model.dart';
import 'package:stacked/stacked.dart';

import '../../widget/generic_container.dart';

class AnalyticsView extends StatelessWidget {
  const AnalyticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReportModel>.reactive(
      viewModelBuilder: () => ReportModel(),
      builder: (context, model, child) => GenericContainer(title: "Analytics"),
    );
  }
}
