import 'package:flutter/material.dart';
import 'package:ledgerdot/presentation/view/expense/expense_model.dart';
import 'package:stacked/stacked.dart';

import '../../widget/generic_container.dart';

class ExpenseView extends StatelessWidget {
  const ExpenseView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExpenseModel>.reactive(
      viewModelBuilder: () => ExpenseModel(),
      builder: (context, model, child) => GenericContainer(title: "Expense"),
    );
  }
}
