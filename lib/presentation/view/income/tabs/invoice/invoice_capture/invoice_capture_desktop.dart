import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ledgerdot/package/sizeup_ext.dart';
import 'package:ledgerdot/presentation/view/income/tabs/invoice/invoice_model.dart';
import 'package:ledgerdot/presentation/widget/ledger_button.dart';
import 'package:printing/printing.dart';
import 'package:raven/raven.dart';
import 'package:stacked/stacked.dart';

class InvoiceCaptureViewDesktop extends ViewModelWidget<InvoiceModel> {
  final TextEditingController seriesNumber;

  const InvoiceCaptureViewDesktop({
    Key? key,
    required this.seriesNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, InvoiceModel viewModel) {
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

              const Divider(
                thickness: 2,
              ),
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
                controller: seriesNumber,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(16),
                  //CardNumberInputFormatter(),
                ],
                textInputAction: TextInputAction.next,
              ),
              Space.height(2.h)!,

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LedgerButton(
                      title: 'Preview',
                      onTap: viewModel.onAccept,
                      // enabled: viewModel.canAccept,
                    ),
                    LedgerButton(
                      title: 'Cancel',
                    ),
                    LedgerButton(
                      title: "Preview",
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Container(
                              color: Colors.redAccent,
                              width: 500,
                              height: 700,
                              child: PdfPreview(
                                  canChangeOrientation: false,
                                  maxPageWidth: 700,
                                  build: (format) => viewModel.previewPdf()),
                            ),
                          ),
                        );
                      },
                    )
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
