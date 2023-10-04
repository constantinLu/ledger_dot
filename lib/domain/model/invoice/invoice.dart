
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledgerdot/domain/model/client.dart';
import 'package:ledgerdot/domain/model/supplier.dart';

import 'invoice_info.dart';
import 'invoice_item.dart';

part 'invoice.freezed.dart';

@freezed
abstract class Invoice with _$Invoice {
  const factory Invoice({
    required InvoiceInfo invoiceInfo,
    required Supplier supplier,
    required Client client,
    required List<InvoiceItem> items,
  }) = _Invoice;
}
