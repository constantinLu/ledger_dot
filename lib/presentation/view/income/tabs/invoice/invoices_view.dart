import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:ledgerdot/domain/model/address.dart';
import 'package:ledgerdot/domain/model/bank_account.dart';
import 'package:ledgerdot/domain/model/contact.dart';
import 'package:ledgerdot/domain/model/invoice/invoice.dart';
import 'package:ledgerdot/domain/model/invoice/invoice_info.dart';
import 'package:ledgerdot/domain/model/invoice/invoice_item.dart';
import 'package:ledgerdot/package/pubdev/model/money.dart';

import '../../../../../domain/model/client.dart';
import '../../../../../domain/model/supplier.dart';
import '../../../../../infrastructure/service/invoice/invoice_service.dart';
import '../../../../../infrastructure/setup/router/app.locator.dart';

class AddInvoice extends StatelessWidget {
  final _invoiceService = locator<InvoiceService>();

  AddInvoice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Print"),
          Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    _showPdfPreviewDialog(context);
                  },
                  child: Text("Save"))),
          // Rest of your UI ...
        ],
      ),
    );
  }

  void _showPdfPreviewDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     TextButton(
            //         onPressed: () {
            //           // Implement the save functionality here
            //         },
            //         child: Text("SAVE invoice")),
            //     TextButton(
            //         onPressed: () {
            //           // Implement the send to client functionality here
            //         },
            //         child: Text("SEND TO CLIENT")),
            //     CloseButton(),
            //   ],
            // ),
            Container(
              color: Colors.redAccent,
              width: 500,
              height: 700,
              child: PdfPreview(
                canChangeOrientation: false,
                maxPageWidth: 700,
                build: (format) => generatePdf(_invoiceService),
              ),
            ),
          ],
        ),
      ),
    );
  }

//TODO: THIS NEEDS TO BE SOMEWHERE ELESE
  Future<Uint8List> generatePdf(InvoiceService _invoiceService) async {
    final date = DateTime.now();
    final dueDate = date.add(Duration(days: 7));
    final invoice = Invoice(
      invoiceInfo: InvoiceInfo(
        id: 35232,
        createdDate: date,
        dueDate: dueDate,
        seriesNumber: "DEV 3412",
        invoiceCurrency: Currency.EUR,
      ),
      items: [
        InvoiceItem(
          description: 'Coffee',
          quantity: 17,
          name: 'Software development services',
          unit: '',
          price: Money(amount: 620, currency: Currency.EUR),
          vatTax: 0,
        ),
      ],
      supplier: Supplier(
        id: 2,
        name: 'Cronos Europa NV',
        alias: 'Cronos',
        vatNo: '806319824',
        isVatPayer: true,
        address: Address(
            id: 23425,
            street: "Avenue des Arts, 46",
            city: "Brusells",
            country: "Belgium",
            county: 'Brussels'),
        bankAccount: BankAccount(
            id: 4324235325,
            bankName: 'RAIFFAISEN BANK',
            iban: 'RO37RZBR0000060024721147',
            swift: 'RZBRROUB',
            currency: 'EUR',
            alias: 'RAIF EUR',
            description: 'raiffaisen account euro'),
        contact: Contact(
            id: 4235252,
            name: "Constantin Lungu",
            email: "lunguuconstantin@gmail.com",
            phoneNo: "749617031"),
      ),
      client: Client(
        id: 2,
        name: 'Cronos Europa NV',
        alias: 'Cronos',
        vatNo: '806319824',
        isVatPayer: true,
        address: Address(
            id: 23425,
            street: "Avenue des Arts, 46",
            city: "Brusells",
            country: "Belgium",
            county: 'Brussels'),
        contact: Contact(
            id: 4235252,
            name: "Emily Aganaye",
            email: "emily.aganye@gmail.com",
            phoneNo: "7423455523"),
      ),
    );
    final pdf = await _invoiceService.generate(invoice);

    return pdf;
  }
}
