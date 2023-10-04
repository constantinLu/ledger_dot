import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../package/pubdev/model/money.dart';

part 'invoice_item.freezed.dart';

@freezed
abstract class InvoiceItem with _$InvoiceItem {
  const factory InvoiceItem({
    required String name,
    required String description, //03-03-2022 - 31/03-2023
    required String unit, //day or hour
    required int quantity,
    required Money price,
    required double? vatTax, //if is eligible
  }) = _InvoiceItem;
}
