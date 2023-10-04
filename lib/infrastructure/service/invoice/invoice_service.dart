import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:ledgerdot/infrastructure/service/pdf/pdf_service.dart';

import '../../../domain/model/client.dart';
import '../../../domain/model/invoice/invoice.dart';
import '../../../domain/model/invoice/invoice_info.dart';
import '../../../domain/model/supplier.dart';
import '../../../presentation/widget/pdf/pdf_util.dart';
import '../../setup/router/app.locator.dart';

class InvoiceService {
  final _pdfService = locator<PdfService>();

  Future<Uint8List> generate(Invoice invoice) async {
    final pdf = Document();

    pdf.addPage(MultiPage(
      build: (context) => [
        buildHeader(invoice),
        SizedBox(height: 3 * PdfPageFormat.cm),
        buildTitle(invoice),
        buildInvoice(invoice),
        Divider(),
        buildTotal(invoice),
      ],
      footer: (context) => buildFooter(invoice),
    ));

    return _pdfService.saveDocument('my_invoice.pdf', pdf);
  }

  Widget buildHeader(Invoice invoice) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 1 * PdfPageFormat.cm),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildSupplierAddress(invoice.supplier),
              Container(
                height: 50,
                width: 50,
                child: BarcodeWidget(
                  barcode: Barcode.qrCode(),
                  data: invoice.invoiceInfo.seriesNumber,
                ),
              ),
            ],
          ),
          SizedBox(height: 1 * PdfPageFormat.cm),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildCustomerAddress(invoice.client),
              buildInvoiceInfo(invoice.invoiceInfo),
            ],
          ),
        ],
      );

  Widget buildCustomerAddress(Client client) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(client.name, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(client.address.street),
        ],
      );

  Widget buildInvoiceInfo(InvoiceInfo info) {
    final paymentTerms = '${info.dueDate.difference(info.createdDate).inDays} days';
    final titles = <String>['Invoice Number:', 'Invoice Date:', 'Payment Terms:', 'Due Date:'];
    final data = <String>[
      info.seriesNumber,
      Utils.formatDate(info.createdDate),
      paymentTerms,
      Utils.formatDate(info.dueDate),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(titles.length, (index) {
        final title = titles[index];
        final value = data[index];

        return buildText(title: title, value: value, width: 200);
      }),
    );
  }

  Widget buildSupplierAddress(Supplier supplier) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(supplier.name, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 1 * PdfPageFormat.mm),
          Text(supplier.address.street),
        ],
      );

  Widget buildTitle(Invoice invoice) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'INVOICE',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 0.8 * PdfPageFormat.cm),
          //Text(invoice.info.description),
          SizedBox(height: 0.8 * PdfPageFormat.cm),
        ],
      );

  Widget buildInvoice(Invoice invoice) {
    final headers = ['Description', 'Date', 'Quantity', 'Unit Price', 'VAT', 'Total'];
    final data = invoice.items.map((item) {
      //final total = item.price.amount * item.quantity * (1 + item.vatTax);
      final total = item.price.amount * item.quantity;

      return [
        item.description,
        //Utils.formatDate(item.),
        '${item.quantity}',
        '\$ ${item.price}',
        //'${item.vat} %',
        '\$ ${total.toStringAsFixed(2)}',
      ];
    }).toList();

    return TableHelper.fromTextArray(
      headers: headers,
      data: data,
      border: null,
      headerStyle: TextStyle(fontWeight: FontWeight.bold),
      headerDecoration: BoxDecoration(color: PdfColors.grey300),
      cellHeight: 30,
      cellAlignments: {
        0: Alignment.centerLeft,
        1: Alignment.centerRight,
        2: Alignment.centerRight,
        3: Alignment.centerRight,
        4: Alignment.centerRight,
        5: Alignment.centerRight,
      },
    );
  }

  Widget buildTotal(Invoice invoice) {
    final netTotal = invoice.items
        .map((item) => item.price.amount * item.quantity)
        .reduce((item1, item2) => item1 + item2);
    //final vatPercent = invoice.items.first.vat;
    // final vat = netTotal * vatPercent;
    // final total = netTotal + vat;

    return Container(
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          Spacer(flex: 6),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildText(
                  title: 'Net total',
                  value: Utils.formatPrice(netTotal),
                  unite: true,
                ),
                // buildText(
                //   title: 'Vat ${vatPercent * 100} %',
                //   value: Utils.formatPrice(vat),
                //   unite: true,
                // ),
                Divider(),
                buildText(
                  title: 'Total amount due',
                  titleStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  value: Utils.formatPrice(503),
                  unite: true,
                ),
                SizedBox(height: 2 * PdfPageFormat.mm),
                Container(height: 1, color: PdfColors.grey400),
                SizedBox(height: 0.5 * PdfPageFormat.mm),
                Container(height: 1, color: PdfColors.grey400),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFooter(Invoice invoice) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(),
          SizedBox(height: 2 * PdfPageFormat.mm),
          buildSimpleText(title: 'Address', value: invoice.supplier.address.street),
          SizedBox(height: 1 * PdfPageFormat.mm),
          buildSimpleText(title: 'Payment Info', value: invoice.supplier.bankAccount.iban),
        ],
      );

  buildSimpleText({
    required String title,
    required String value,
  }) {
    final style = TextStyle(fontWeight: FontWeight.bold);

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: pw.CrossAxisAlignment.end,
      children: [
        Text(title, style: style),
        SizedBox(width: 2 * PdfPageFormat.mm),
        Text(value),
      ],
    );
  }

  static buildText({
    required String title,
    required String value,
    double width = double.infinity,
    TextStyle? titleStyle,
    bool unite = false,
  }) {
    final style = titleStyle ?? TextStyle(fontWeight: FontWeight.bold);

    return Container(
      width: width,
      child: Row(
        children: [
          Expanded(child: Text(title, style: style)),
          Text(value, style: unite ? style : null),
        ],
      ),
    );
  }
}
