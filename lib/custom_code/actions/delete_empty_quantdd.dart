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

Future<void> deleteEmptyQuantdd() async {
  try {
    final collection = FirebaseFirestore.instance
        .collection('preVenda'); // Ajuste o nome da sua coleção
    final querySnapshot = await collection
        .where('venda', isNull: true) // Busca campos nulos
        .get();

    for (var doc in querySnapshot.docs) {
      await doc.reference.delete();
    }

    print('Documentos deletados: ${querySnapshot.size}');
  } catch (e) {
    print('Erro ao deletar registros: $e');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
