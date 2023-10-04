import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledgerdot/package/pubdev/model/money.dart';



part 'invoice_info.freezed.dart';

@freezed
abstract class InvoiceInfo with _$InvoiceInfo {

  const factory InvoiceInfo({
    required int id,
    required String seriesNumber,
    required DateTime createdDate,
    required DateTime dueDate,
    required Currency invoiceCurrency,
  }) = _InvoiceInfo;
}

