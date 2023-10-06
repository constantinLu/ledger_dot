import 'package:flutter/material.dart';
import 'package:ledgerdot/presentation/view/income/tabs/client/client_capture/client_capture_desktop.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../client_model.dart';
import 'client_capture_view.form.dart';

@FormView(
  fields: [
    FormTextField(name: 'clientName'),
    FormTextField(name: 'alias'),
    FormTextField(name: 'vatNo'),
    FormTextField(name: 'street'),
    FormTextField(name: 'city'),
    FormTextField(name: 'county'),
    FormTextField(name: 'country'),
    FormTextField(name: 'contactName'),
    FormTextField(name: 'email'),
    FormTextField(name: 'phoneNo'),
  ],
)
class ClientCaptureView extends StackedView<ClientModel> with $ClientCaptureView {
  const ClientCaptureView({super.key});

  @override
  Widget builder(BuildContext context, ClientModel viewModel, Widget? child) {
    return ClientCaptureViewDesktop(
      clientNameController: clientNameController,
      aliasController: aliasController,
      vatNoController: vatNoController,
      streetController: streetController,
      cityController: cityController,
      countryController: countryController,
      countyController: countyController,
      contactNameController: contactNameController,
      emailController: emailController,
      phoneNoController: phoneNoController,
    );
  }

  @override
  ClientModel viewModelBuilder(BuildContext context) => ClientModel();

  @override
  void onViewModelReady(ClientModel viewModel) {
    syncFormWithViewModel(viewModel);
    viewModel.initializeForm();
  }
}
