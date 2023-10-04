import 'dart:typed_data';

import 'package:pdf/widgets.dart';

import '../../../package/util.dart';

abstract class PdfService {
  Future<Uint8List> saveDocument(String fileName, Document pdf);

  Future<void> openFile(Document pdf);

  DeviceType type();
}
