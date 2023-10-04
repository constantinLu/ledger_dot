// import 'dart:html' as html;
// import 'dart:io';
//
// import 'package:flutter/foundation.dart';
// import 'package:open_file/open_file.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:pdf/widgets.dart';
//
// class PdfApi {
//
//   static Future<> saveDocument({required String name, required Document pdf}) async {
//     final bytes = await pdf.save();
//       final dir = await getApplicationDocumentsDirectory();
//       final file = File('${dir.path}/$name');
//       await file.writeAsBytes(bytes);
//     }
//   }
//
//   static Future openFile(File file) async {
//     final url = file.path;
//     await OpenFile.open(url);
//   }
//
//   static void viewPdfWeb(Uint8List bytes) {
//     final blob = html.Blob([bytes]);
//     final url = html.Url.createObjectUrlFromBlob(blob);
//     final anchor = html.AnchorElement(href: url)
//       ..target = 'blank'
//       ..click();
//   }
//
//   // This is specific for web
//   static _saveAsWeb(Uint8List bytes, String fileName) {
//     final blob = html.Blob([bytes]);
//     final url = html.Url.createObjectUrlFromBlob(blob);
//     final anchor = html.AnchorElement(href: url)
//       ..target = 'blank'
//       ..download = fileName
//       ..click();
//     html.Url.revokeObjectUrl(url);
//   }
// }
