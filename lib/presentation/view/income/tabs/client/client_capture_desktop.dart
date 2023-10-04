import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ledgerdot/presentation/view/income/tabs/client/client_capture_model.dart';
import 'package:ledgerdot/presentation/widget/input_field.dart';
import 'package:stacked/stacked.dart';

class ClientCaptureViewDesktop extends ViewModelWidget<ClientCaptureModel> {
  final TextEditingController clientNameController;
  final TextEditingController aliasController;

  const ClientCaptureViewDesktop({
    Key? key,
    required this.clientNameController,
    required this.aliasController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ClientCaptureModel viewModel) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //verticalSpaceLarge,
            Text(
              'Enter your card details'.toUpperCase(),
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
            //verticalSpaceMedium,
            if (viewModel.showValidationMessage) ...[
              Text(
                viewModel.validationMessage!,
                //style: ktsBodyLarge.copyWith(color: Colors.redAccent),
              ),
              //verticalSpaceLarge,
            ],
            InputField(
              controller: clientNameController,
              hintText: 'Card Number',
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(16),
                //CardNumberInputFormatter(),
              ],
              textInputType: TextInputType.number,
            ),
            //verticalSpaceSmall,
            InputField(
              controller: aliasController,
              hintText: 'Name on Card',
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[a-zA-Z ]'))],
              textInputType: TextInputType.name,
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     AcademyButton(
            //       title: 'Accept',
            //       onTap: viewModel.onAccept,
            //       enabled: viewModel.canAccept,
            //     ),
            //     horizontalSpaceSmall,
            //     AcademyButton(title: 'Cancel', onTap: viewModel.onCancel),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
