import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaixaEtariaRecord extends FirestoreRecord {
  FaixaEtariaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NomeIdentificador" field.
  String? _nomeIdentificador;
  String get nomeIdentificador => _nomeIdentificador ?? '';
  bool hasNomeIdentificador() => _nomeIdentificador != null;

  // "DescricaoInfo" field.
  String? _descricaoInfo;
  String get descricaoInfo => _descricaoInfo ?? '';
  bool hasDescricaoInfo() => _descricaoInfo != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  void _initializeFields() {
    _nomeIdentificador = snapshotData['NomeIdentificador'] as String?;
    _descricaoInfo = snapshotData['DescricaoInfo'] as String?;
    _uid = snapshotData['uid'] as String?;
    _icon = snapshotData['icon'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FaixaEtaria');

  static Stream<FaixaEtariaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FaixaEtariaRecord.fromSnapshot(s));

  static Future<FaixaEtariaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FaixaEtariaRecord.fromSnapshot(s));

  static FaixaEtariaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FaixaEtariaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FaixaEtariaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FaixaEtariaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FaixaEtariaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FaixaEtariaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFaixaEtariaRecordData({
  String? nomeIdentificador,
  String? descricaoInfo,
  String? uid,
  String? icon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NomeIdentificador': nomeIdentificador,
      'DescricaoInfo': descricaoInfo,
      'uid': uid,
      'icon': icon,
    }.withoutNulls,
  );

  return firestoreData;
}

class FaixaEtariaRecordDocumentEquality implements Equality<FaixaEtariaRecord> {
  const FaixaEtariaRecordDocumentEquality();

  @override
  bool equals(FaixaEtariaRecord? e1, FaixaEtariaRecord? e2) {
    return e1?.nomeIdentificador == e2?.nomeIdentificador &&
        e1?.descricaoInfo == e2?.descricaoInfo &&
        e1?.uid == e2?.uid &&
        e1?.icon == e2?.icon;
  }

  @override
  int hash(FaixaEtariaRecord? e) => const ListEquality()
      .hash([e?.nomeIdentificador, e?.descricaoInfo, e?.uid, e?.icon]);

  @override
  bool isValidKey(Object? o) => o is FaixaEtariaRecord;
}
