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

Future<void> criarAssentosParaSessao(String dataId, String localId) async {
  final firestore = FirebaseFirestore.instance;

  // Busca os assentos do local (layout base)
  final assentosBase = await firestore
      .collection('local')
      .doc(localId)
      .collection('assentos')
      .get();

  // Subcoleção da sessão (dataId) onde serão salvos os status
  final assentosRef =
      firestore.collection('data').doc(dataId).collection('assentosStatus');

  final batch = firestore.batch();

  for (var doc in assentosBase.docs) {
    final index = doc.data()['index'];
    final ref = assentosRef.doc(index.toString());
    batch.set(ref, {
      'index': index,
      'status': 'disponivel',
      'uid': null,
    });
  }

  await batch.commit();
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
