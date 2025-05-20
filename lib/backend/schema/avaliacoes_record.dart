import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvaliacoesRecord extends FirestoreRecord {
  AvaliacoesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "show" field.
  DocumentReference? _show;
  DocumentReference? get show => _show;
  bool hasShow() => _show != null;

  // "referenteVenda" field.
  DocumentReference? _referenteVenda;
  DocumentReference? get referenteVenda => _referenteVenda;
  bool hasReferenteVenda() => _referenteVenda != null;

  // "comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  bool hasComentario() => _comentario != null;

  // "estrelas" field.
  double? _estrelas;
  double get estrelas => _estrelas ?? 0.0;
  bool hasEstrelas() => _estrelas != null;

  // "clienteNome" field.
  String? _clienteNome;
  String get clienteNome => _clienteNome ?? '';
  bool hasClienteNome() => _clienteNome != null;

  void _initializeFields() {
    _show = snapshotData['show'] as DocumentReference?;
    _referenteVenda = snapshotData['referenteVenda'] as DocumentReference?;
    _comentario = snapshotData['comentario'] as String?;
    _estrelas = castToType<double>(snapshotData['estrelas']);
    _clienteNome = snapshotData['clienteNome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('avaliacoes');

  static Stream<AvaliacoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvaliacoesRecord.fromSnapshot(s));

  static Future<AvaliacoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AvaliacoesRecord.fromSnapshot(s));

  static AvaliacoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AvaliacoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvaliacoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvaliacoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvaliacoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvaliacoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvaliacoesRecordData({
  DocumentReference? show,
  DocumentReference? referenteVenda,
  String? comentario,
  double? estrelas,
  String? clienteNome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'show': show,
      'referenteVenda': referenteVenda,
      'comentario': comentario,
      'estrelas': estrelas,
      'clienteNome': clienteNome,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvaliacoesRecordDocumentEquality implements Equality<AvaliacoesRecord> {
  const AvaliacoesRecordDocumentEquality();

  @override
  bool equals(AvaliacoesRecord? e1, AvaliacoesRecord? e2) {
    return e1?.show == e2?.show &&
        e1?.referenteVenda == e2?.referenteVenda &&
        e1?.comentario == e2?.comentario &&
        e1?.estrelas == e2?.estrelas &&
        e1?.clienteNome == e2?.clienteNome;
  }

  @override
  int hash(AvaliacoesRecord? e) => const ListEquality().hash(
      [e?.show, e?.referenteVenda, e?.comentario, e?.estrelas, e?.clienteNome]);

  @override
  bool isValidKey(Object? o) => o is AvaliacoesRecord;
}
