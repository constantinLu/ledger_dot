import 'package:freezed_annotation/freezed_annotation.dart';

part 'money.freezed.dart';

@freezed
class Money with _$Money {
  const factory Money({
    required double amount,
    required Currency currency,
  }) = _Money;
}

enum Currency {
  EUR,
  RON,
  USD,
}
