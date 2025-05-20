// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart' show kIsWeb;

import 'dart:html' as html; // Importa aqui, mas só usa se for Web

Future<void> downloadImage(String imageUrl, String fileName) async {
  if (!kIsWeb) {
    print('Download de imagem disponível apenas na Web.');
    return;
  }

  try {
    final response = await http.get(Uri.parse(imageUrl));

    if (response.statusCode != 200 || response.bodyBytes.isEmpty) {
      print('Erro ao baixar a imagem. Código: ${response.statusCode}');
      return;
    }

    final Uint8List bytes = response.bodyBytes;

    // Definir o tipo correto do arquivo com base na extensão
    String mimeType = 'image/jpeg'; // Padrão
    if (fileName.endsWith('.png')) {
      mimeType = 'image/png';
    } else if (fileName.endsWith('.jpg') || fileName.endsWith('.jpeg')) {
      mimeType = 'image/jpeg';
    }

    final blob = html.Blob([bytes], mimeType);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', fileName)
      ..click();
    html.Url.revokeObjectUrl(url);

    print('Download finalizado: $fileName');
  } catch (e) {
    print('Erro ao baixar a imagem: $e');
  }
}
