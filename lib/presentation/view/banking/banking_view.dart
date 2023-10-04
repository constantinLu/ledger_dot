import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widget/generic_container.dart';
import 'banking_model.dart';

class BankView extends StatelessWidget {
  const BankView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BankingModel>.reactive(
      viewModelBuilder: () => BankingModel(),
      builder: (context, model, child) => GenericContainer(title: "Banking"),
    );
  }
}
