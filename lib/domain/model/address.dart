import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required int id,
    required String street,
    required String city,
    required String county,
    required String country,
    String? postalCode,
    String? website,
  }) = _Address;

  factory Address.empty() =>
      Address(id: Random().nextInt(323424), street: "", city: "", county: "", country: "");
}
