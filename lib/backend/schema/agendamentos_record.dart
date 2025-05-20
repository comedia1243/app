import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendamentosRecord extends FirestoreRecord {
  AgendamentosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  void _initializeFields() {
    _data = snapshotData['data'] as DateTime?;
    _nome = snapshotData['nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agendamentos');

  static Stream<AgendamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgendamentosRecord.fromSnapshot(s));

  static Future<AgendamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgendamentosRecord.fromSnapshot(s));

  static AgendamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgendamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendamentosRecordData({
  DateTime? data,
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'data': data,
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendamentosRecordDocumentEquality
    implements Equality<AgendamentosRecord> {
  const AgendamentosRecordDocumentEquality();

  @override
  bool equals(AgendamentosRecord? e1, AgendamentosRecord? e2) {
    return e1?.data == e2?.data && e1?.nome == e2?.nome;
  }

  @override
  int hash(AgendamentosRecord? e) =>
      const ListEquality().hash([e?.data, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is AgendamentosRecord;
}
