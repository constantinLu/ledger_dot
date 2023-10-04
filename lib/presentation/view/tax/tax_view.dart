import 'package:flutter/material.dart';
import 'package:ledgerdot/presentation/view/tax/tax_model.dart';
import 'package:stacked/stacked.dart';

import '../../widget/generic_container.dart';

class TaxView extends StatelessWidget {
  const TaxView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TaxModel>.reactive(
      viewModelBuilder: () => TaxModel(),
      builder: (context, model, child) => GenericContainer(title: "Tax"),
    );
  }
}
