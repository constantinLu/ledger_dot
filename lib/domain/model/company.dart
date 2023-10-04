import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledgerdot/domain/model/address.dart';
import 'package:ledgerdot/domain/model/bank_account.dart';

import 'contact.dart';

part 'company.freezed.dart';

@freezed
class Company with _$Company {
  const factory Company({
    required int id,
    required String name,
    required String alias,
    required String vatNo,
    required String? intraVatNo,
    required String? regNo,
    required double socialCapital,
    required bool isVatPayer,
    required Address address,
    required Contact contact,
    required BankAccount bankAccount,
  }) = _Company;
}
