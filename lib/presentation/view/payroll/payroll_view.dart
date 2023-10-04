import 'package:flutter/material.dart';
import 'package:ledgerdot/presentation/view/payroll/payroll_model.dart';
import 'package:stacked/stacked.dart';

import '../../widget/generic_container.dart';

class PayrollView extends StatelessWidget {
  const PayrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PayrollModel>.reactive(
      viewModelBuilder: () => PayrollModel(),
      builder: (context, model, child) => GenericContainer(title: "Payroll"),
    );
  }
}
