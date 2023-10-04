import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account.freezed.dart';

@freezed
abstract class BankAccount with _$BankAccount {

  const factory BankAccount({
    required int id,
    required String bankName,
    required String iban,
    required String swift,
    required String currency,
    required String alias,
    required String description,
  }) = _BankAccount;
}
