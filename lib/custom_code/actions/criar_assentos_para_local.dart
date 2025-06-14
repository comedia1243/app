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

Future<void> criarAssentosParaLocal(String localId, int quantidade) async {
  final firestore = FirebaseFirestore.instance;
  final assentosRef =
      firestore.collection('local').doc(localId).collection('assentos');

  final batch = firestore.batch();

  for (int i = 0; i < quantidade; i++) {
    final docRef = assentosRef.doc(i.toString());
    batch.set(docRef, {
      'index': i,
      'status': 'disponivel',
      'uid': null,
    });
  }

  await batch.commit();
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
