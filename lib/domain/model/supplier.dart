import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledgerdot/domain/model/address.dart';
import 'package:ledgerdot/domain/model/bank_account.dart';

import 'contact.dart';

part 'supplier.freezed.dart';

@freezed
class Supplier with _$Supplier {
  const factory Supplier({
    required int id,
    required String name,
    required String alias,
    required String vatNo,
    String? regNo,
    required bool isVatPayer,
    required Address address,
    required Contact contact,
    required BankAccount bankAccount,
  }) = _Supplier;
}
