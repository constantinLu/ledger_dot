import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
abstract class Contact with _$Contact {
  const factory Contact({
    required int id,
    required String name,
    required String email,
    required String phoneNo,
  }) = _Contact;

  factory Contact.empty() =>
      Contact(id: Random().nextInt(429543), name: "", email: "", phoneNo: "");
}
