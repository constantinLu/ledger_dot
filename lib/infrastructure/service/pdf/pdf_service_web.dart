import 'dart:html' as html;
import 'dart:typed_data';

import 'package:pdf/widgets.dart';
import 'package:ledgerdot/infrastructure/service/pdf/pdf_service.dart';

import '../../../package/util.dart';

class PdfWebService extends PdfService {
  @override
  Future<Uint8List> saveDocument(String fileName, Document pdf) async {
    final bytes = await pdf.save();
    return bytes;
    final blob = html.Blob([bytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..target = 'blank'
      ..download = fileName
      ..click();
    html.Url.revokeObjectUrl(url);
  }

  @override
  Future<void> openFile(Document pdf) async {
    final blob = html.Blob(["asd"]);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..target = 'blank'
      ..click();
  }

  @override
  DeviceType type() {
    return DeviceType.web;
  }
}
