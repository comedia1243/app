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

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:typed_data';

Future<String?> generateUniqueEmailsPDF() async {
  try {
    // Configurações do Firebase
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    final FirebaseStorage storage = FirebaseStorage.instance;
    final int pageSize = 1000;
    DocumentSnapshot? lastDoc;
    Set<String> emails = {};

    // Paginação para buscar todos os registros
    do {
      Query query =
          firestore.collection('venda').orderBy('clienteEmail').limit(pageSize);
      if (lastDoc != null) {
        query = query.startAfterDocument(lastDoc);
      }
      final querySnapshot = await query.get();

      if (querySnapshot.docs.isEmpty) break;

      for (var doc in querySnapshot.docs) {
        final email = doc['clienteEmail'] as String?;
        if (email != null && email.isNotEmpty) {
          emails.add(email); // Adiciona ao Set (sem duplicação)
        }
      }

      lastDoc = querySnapshot.docs.last;
    } while (lastDoc != null);

    // Criar o PDF
    final pdf = pw.Document();
    final List<String> emailList = emails.toList();
    const int emailsPerPage = 40; // Ajuste conforme necessário

    // Adiciona páginas ao PDF
    for (int i = 0; i < emailList.length; i += emailsPerPage) {
      final emailsPage = emailList.sublist(
        i,
        (i + emailsPerPage > emailList.length)
            ? emailList.length
            : i + emailsPerPage,
      );

      pdf.addPage(
        pw.Page(
          build: (pw.Context context) {
            return pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Lista de Clientes Únicos',
                    style: pw.TextStyle(fontSize: 20)),
                pw.SizedBox(height: 20),
                ...emailsPage.map((email) =>
                    pw.Text(email, style: pw.TextStyle(fontSize: 12))),
              ],
            );
          },
        ),
      );
    }

    // Converter o PDF em bytes
    final Uint8List pdfBytes = await pdf.save();

    // Upload no Firebase Storage
    final String filePath =
        'pdfs/clientes_unicos_${DateTime.now().millisecondsSinceEpoch}.pdf';
    final ref = storage.ref().child(filePath);
    await ref.putData(pdfBytes);
    final pdfUrl = await ref.getDownloadURL();

    return pdfUrl;
  } catch (e) {
    print('Erro ao gerar PDF: $e');
    return null;
  }
}
