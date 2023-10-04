import 'package:flutter/material.dart';
import 'package:ledgerdot/domain/model/address.dart';
import 'package:ledgerdot/domain/model/client.dart';
import 'package:ledgerdot/domain/model/contact.dart';
import 'package:ledgerdot/presentation/view/income/tabs/client/client_capture_desktop.dart';
import 'package:ledgerdot/presentation/view/income/tabs/client/client_capture_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'client_capture_view.form.dart';

@FormView(
  fields: [
    FormTextField(name: 'clientName'),
    FormTextField(name: 'alias'),
  ],
)
class ClientCaptureView extends StackedView<ClientCaptureModel> with $ClientCaptureView {
  final _client = const Client(
    id: 2,
    name: 'Cronos Europa NV',
    alias: 'Cronos',
    vatNo: '806319824',
    isVatPayer: true,
    //TODO:
    address: Address(
        id: 23425,
        street: "Avenue des Arts, 46",
        city: "Brusells",
        country: "Belgium",
        county: 'Brussels'),
    contact: Contact(
        id: 4235252, name: "Emily Aganaye", email: "emily.aganye@gmail.com", phoneNo: "7423455523"),
  );

  const ClientCaptureView({super.key});

  @override
  Widget builder(BuildContext context, ClientCaptureModel viewModel, Widget? child) {
    return ClientCaptureViewDesktop(clientNameController: clientNameController, aliasController: aliasController);
  }

  @override
  ClientCaptureModel viewModelBuilder(BuildContext context) => ClientCaptureModel();


  @override
  void onViewModelReady(ClientCaptureModel viewModel) {
    syncFormWithViewModel(viewModel);
    viewModel.initializeForm();
  }
}
