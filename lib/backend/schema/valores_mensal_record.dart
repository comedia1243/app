import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ValoresMensalRecord extends FirestoreRecord {
  ValoresMensalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "mes" field.
  int? _mes;
  int get mes => _mes ?? 0;
  bool hasMes() => _mes != null;

  // "ano" field.
  int? _ano;
  int get ano => _ano ?? 0;
  bool hasAno() => _ano != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "receber" field.
  double? _receber;
  double get receber => _receber ?? 0.0;
  bool hasReceber() => _receber != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  void _initializeFields() {
    _mes = castToType<int>(snapshotData['mes']);
    _ano = castToType<int>(snapshotData['ano']);
    _total = castToType<double>(snapshotData['total']);
    _receber = castToType<double>(snapshotData['receber']);
    _quantidade = castToType<int>(snapshotData['quantidade']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('valoresMensal');

  static Stream<ValoresMensalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ValoresMensalRecord.fromSnapshot(s));

  static Future<ValoresMensalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ValoresMensalRecord.fromSnapshot(s));

  static ValoresMensalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ValoresMensalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ValoresMensalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ValoresMensalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ValoresMensalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ValoresMensalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createValoresMensalRecordData({
  int? mes,
  int? ano,
  double? total,
  double? receber,
  int? quantidade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mes': mes,
      'ano': ano,
      'total': total,
      'receber': receber,
      'quantidade': quantidade,
    }.withoutNulls,
  );

  return firestoreData;
}

class ValoresMensalRecordDocumentEquality
    implements Equality<ValoresMensalRecord> {
  const ValoresMensalRecordDocumentEquality();

  @override
  bool equals(ValoresMensalRecord? e1, ValoresMensalRecord? e2) {
    return e1?.mes == e2?.mes &&
        e1?.ano == e2?.ano &&
        e1?.total == e2?.total &&
        e1?.receber == e2?.receber &&
        e1?.quantidade == e2?.quantidade;
  }

  @override
  int hash(ValoresMensalRecord? e) => const ListEquality()
      .hash([e?.mes, e?.ano, e?.total, e?.receber, e?.quantidade]);

  @override
  bool isValidKey(Object? o) => o is ValoresMensalRecord;
}
