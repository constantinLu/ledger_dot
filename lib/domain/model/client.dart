import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'contact.dart';

part 'client.freezed.dart';

@freezed
class Client with _$Client {
  const factory Client({
    required int id,
    required String name,
    required String alias,
    required String vatNo,
    String? regNo,
    required bool isVatPayer,
    required Address address,
    required Contact contact,
  }) = _Client;
}
