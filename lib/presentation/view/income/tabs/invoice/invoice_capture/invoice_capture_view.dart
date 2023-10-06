import 'package:flutter/material.dart';
import 'package:ledgerdot/presentation/view/income/tabs/invoice/invoice_capture/invoice_capture_desktop.dart';
import 'package:ledgerdot/presentation/view/income/tabs/invoice/invoice_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'invoice_capture_view.form.dart';

@FormView(
  fields: [
    FormTextField(name: 'seriesNumber'),
  ],
)
class InvoiceCaptureView extends StackedView<InvoiceModel> with $InvoiceCaptureView {
  const InvoiceCaptureView({super.key});

  @override
  Widget builder(BuildContext context, InvoiceModel viewModel, Widget? child) {
    return InvoiceCaptureViewDesktop(seriesNumber: seriesNumberController);
  }

  @override
  InvoiceModel viewModelBuilder(BuildContext context) => InvoiceModel();

  @override
  void onViewModelReady(InvoiceModel viewModel) {
    //syncFormWithViewModel(viewModel);
    viewModel.initializeForm();
  }
}
