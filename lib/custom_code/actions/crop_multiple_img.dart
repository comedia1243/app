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

import 'package:firebase_storage/firebase_storage.dart';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;
import 'dart:io' as io;
import 'package:flutter/foundation.dart';
import 'package:universal_html/html.dart' as html;

Future<List<String>> cropMultipleImg(BuildContext context) async {
  final FirebaseStorage storage = FirebaseStorage.instance;
  List<String> downloadURLs = [];
  final dialogContext =
      context; // Salva o contexto correto para garantir que o loading feche

  // Exibir a barra de progresso
  showDialog(
    context: dialogContext,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(
              'Enviando imagens...',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      );
    },
  );

  try {
    if (kIsWeb) {
      final html.FileUploadInputElement uploadInput =
          html.FileUploadInputElement()
            ..accept = 'image/*'
            ..multiple = true;
      uploadInput.click();
      await uploadInput.onChange.first;

      final files = uploadInput.files;
      if (files == null || files.isEmpty) {
        throw Exception('Nenhum arquivo selecionado.');
      }

      for (final file in files) {
        final reader = html.FileReader();
        reader.readAsArrayBuffer(file);
        await reader.onLoad.first;

        final Uint8List imageBytes = reader.result as Uint8List;
        final img.Image? originalImage = img.decodeImage(imageBytes);
        if (originalImage == null) continue;

        final int size = originalImage.width < originalImage.height
            ? originalImage.width
            : originalImage.height;

        final img.Image croppedImage = img.copyCrop(
          originalImage,
          x: (originalImage.width - size) ~/ 2,
          y: (originalImage.height - size) ~/ 2,
          width: size,
          height: size,
        );

        final Uint8List compressedBytes = Uint8List.fromList(
          img.encodeJpg(croppedImage, quality: 70),
        );

        final String fileName =
            '${DateTime.now().millisecondsSinceEpoch}_${file.name}';
        final Reference ref = storage.ref('images/$fileName');
        final UploadTask uploadTask = ref.putData(compressedBytes);

        final TaskSnapshot snapshot = await uploadTask;
        final String downloadURL = await snapshot.ref.getDownloadURL();
        downloadURLs.add(downloadURL);
      }
    } else {
      final ImagePicker picker = ImagePicker();
      final List<XFile>? pickedFiles = await picker.pickMultiImage();

      if (pickedFiles == null || pickedFiles.isEmpty) {
        throw Exception('Nenhuma imagem selecionada.');
      }

      for (final pickedFile in pickedFiles) {
        final io.File file = io.File(pickedFile.path);
        final Uint8List imageBytes = await file.readAsBytes();
        final img.Image? originalImage = img.decodeImage(imageBytes);
        if (originalImage == null) continue;

        final int size = originalImage.width < originalImage.height
            ? originalImage.width
            : originalImage.height;

        final img.Image croppedImage = img.copyCrop(
          originalImage,
          x: (originalImage.width - size) ~/ 2,
          y: (originalImage.height - size) ~/ 2,
          width: size,
          height: size,
        );

        final Uint8List compressedBytes = Uint8List.fromList(
          img.encodeJpg(croppedImage, quality: 70),
        );

        final String fileName =
            '${DateTime.now().millisecondsSinceEpoch}_${pickedFile.name}';
        final Reference ref = storage.ref('images/$fileName');
        final UploadTask uploadTask = ref.putData(compressedBytes);

        final TaskSnapshot snapshot = await uploadTask;
        final String downloadURL = await snapshot.ref.getDownloadURL();
        downloadURLs.add(downloadURL);
      }
    }
  } catch (e) {
    debugPrint('Erro: $e');
  } finally {
    if (Navigator.canPop(dialogContext)) {
      Navigator.of(dialogContext, rootNavigator: true).pop();
    }
  }

  debugPrint('URLs das imagens enviadas: $downloadURLs');
  return downloadURLs;
}
