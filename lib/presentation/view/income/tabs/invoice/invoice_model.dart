import 'dart:typed_data';

import 'package:ledgerdot/domain/model/address.dart';
import 'package:ledgerdot/domain/model/bank_account.dart';
import 'package:ledgerdot/domain/model/client.dart';
import 'package:ledgerdot/domain/model/contact.dart';
import 'package:ledgerdot/domain/model/invoice/invoice.dart';
import 'package:ledgerdot/domain/model/invoice/invoice_info.dart';
import 'package:ledgerdot/domain/model/invoice/invoice_item.dart';
import 'package:ledgerdot/domain/model/supplier.dart';
import 'package:ledgerdot/infrastructure/service/invoice/invoice_service.dart';
import 'package:ledgerdot/infrastructure/setup/router/app.locator.dart';
import 'package:ledgerdot/infrastructure/setup/router/app.router.dart';
import 'package:ledgerdot/package/pubdev/model/money.dart';
import 'package:ledgerdot/presentation/view/income/tabs/client/client_capture/client_capture_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class InvoiceModel extends FormViewModel {
  //final log = getLogger('PaymentCaptureViewModel');
  final _routerService = locator<RouterService>();
  final _invoiceService = locator<InvoiceService>();

  //this is the initial, it should be empty
  var _client = Client(
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
        id: 4235252, name: "Emily Aganaye", email: "emily.aganye@gmail.com", phoneNo: "7423455523"),
  );

  final invoice = Invoice(
    invoiceInfo: InvoiceInfo(
      id: 35232,
      createdDate: DateTime.now(),
      dueDate: DateTime.now().add(Duration(days: 7)),
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

  var _emptyClient = Client.empty();

  Client get client => _client;

  void saveInvoice(Invoice invoice) {
    notifyListeners();
  }

  void initializeForm() {
    // clientNameValue = client.name;
    // aliasValue = client.alias;
  }

  Future<void> onAccept() async {
    //log.i('Payment submited!');

    if (!isFormValid) {
      setValidationMessage("Data not valid");
      rebuildUi();
      return;
    }
  }

  // clients
  Future<Uint8List> previewPdf() async {
    return await _invoiceService.generate(invoice);
  }
}
