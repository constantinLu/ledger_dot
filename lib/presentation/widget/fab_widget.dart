import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:ledgerdot/domain/model/address.dart';
import 'package:ledgerdot/domain/model/bank_account.dart';
import 'package:ledgerdot/domain/model/contact.dart';
import 'package:ledgerdot/infrastructure/setup/router/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../domain/model/client.dart';
import '../../domain/model/invoice/invoice.dart';
import '../../domain/model/invoice/invoice_info.dart';
import '../../domain/model/invoice/invoice_item.dart';
import '../../domain/model/supplier.dart';
import '../../infrastructure/service/invoice/invoice_service.dart';
import '../../infrastructure/setup/router/app.locator.dart';
import '../../package/pubdev/model/money.dart';

class FabWidget extends StatelessWidget {
  FabWidget();

  final routerService = locator<RouterService>();

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      label: Text("GENERATE"),
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: const IconThemeData(size: 15.0),
      childPadding: const EdgeInsets.all(5),
      elevation: 10,
      spaceBetweenChildren: 5,
      spacing: 10,
      direction: SpeedDialDirection.up,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
      children: [
        SpeedDialChild(
          child: const Icon(Icons.document_scanner),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
          label: 'Generate invoice',
          visible: true,
          onTap: () => routerService.navigateToIncomeView(tabId: 0),
        ),
        SpeedDialChild(
            label: 'Add client',
            elevation: 20,
            child: const Icon(Icons.cases_sharp),
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
        SpeedDialChild(
          label: 'Add expense',
          child: const Icon(Icons.call_made_sharp),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        SpeedDialChild(
            label: 'Add provider',
            child: const Icon(Icons.add_business),
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
      ],
    );
  }
}

//TODO: THIS NEEDS TO BE SOMEWHERE ELESE
void generatePdf(InvoiceService _invoiceService) async {
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
  final pdfFile = await _invoiceService.generate(invoice);
}
