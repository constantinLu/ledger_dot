import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ledgerdot/package/sizeup_ext.dart';
import 'package:ledgerdot/presentation/view/income/tabs/client/client_capture_model.dart';
import 'package:ledgerdot/presentation/widget/ledger_button.dart';
import 'package:raven/raven.dart';
import 'package:stacked/stacked.dart';

class ClientCaptureViewDesktop extends ViewModelWidget<ClientCaptureModel> {
  final TextEditingController clientNameController;
  final TextEditingController aliasController;
  final TextEditingController vatNoController;
  final TextEditingController streetController;
  final TextEditingController cityController;
  final TextEditingController countryController;
  final TextEditingController countyController;
  final TextEditingController contactNameController;
  final TextEditingController emailController;
  final TextEditingController phoneNoController;

  const ClientCaptureViewDesktop({
    Key? key,
    required this.vatNoController,
    required this.streetController,
    required this.cityController,
    required this.countryController,
    required this.countyController,
    required this.contactNameController,
    required this.emailController,
    required this.phoneNoController,
    required this.clientNameController,
    required this.aliasController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ClientCaptureModel viewModel) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //TODO: generalize this
              const Divider(),
              const Text(
                'Add new client',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),

              const Divider(thickness: 2,),
              //verticalSpaceMedium,
              if (viewModel.showValidationMessage) ...[
                Text(
                  viewModel.validationMessage!,
                  //style: ktsBodyLarge.copyWith(color: Colors.redAccent),
                ),
                //verticalSpaceLarge,
              ],
              Space.height(2.h)!,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Client name',
                ),
                controller: clientNameController,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(16),
                  //CardNumberInputFormatter(),
                ],
                textInputAction: TextInputAction.next,
              ),
              Space.height(2.h)!,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Alias',
                ),
                controller: aliasController,
              ),
              Space.height(2.h)!,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Vat number',
                ),
                controller: vatNoController,
              ),
              Space.height(2.h)!,
              const Divider(thickness: 2),
              Text("Address"),
              const Divider(thickness: 2),
              Space.height(2.h)!,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Street',
                ),
                controller: streetController,
              ),
              Space.height(2.h)!,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'city',
                ),
                controller: cityController,
              ),
              Space.height(2.h)!,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Country',
                ),
                controller: countryController,
              ),
              Space.height(2.h)!,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'County',
                ),
                controller: countyController,
              ),
              Space.height(2.h)!,
              const Divider(thickness: 2),
              Text("Contact"),
              const Divider(thickness: 2),
              Space.height(2.h)!,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Contact name',
                ),
                controller: contactNameController,
              ),
              Space.height(2.h)!,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
                controller: emailController,
              ),
              Space.height(2.h)!,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Phone No',
                ),
                controller: phoneNoController,
              ),


              //verticalSpaceSmall,
              // InputField(
              //   controller: aliasController,
              //   hintText: 'Name on Card',
              //   inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[a-zA-Z ]'))],
              //   textInputType: TextInputType.name,
              // ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LedgerButton(
                      title: 'Accept',
                      onTap: viewModel.onAccept,
                      // enabled: viewModel.canAccept,
                    ),
                    LedgerButton(
                      title: 'Cancel',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
