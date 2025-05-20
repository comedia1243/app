import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FinanceiroRecord extends FirestoreRecord {
  FinanceiroRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "hoje_valor_total" field.
  double? _hojeValorTotal;
  double get hojeValorTotal => _hojeValorTotal ?? 0.0;
  bool hasHojeValorTotal() => _hojeValorTotal != null;

  // "hoje_valor_recebe" field.
  double? _hojeValorRecebe;
  double get hojeValorRecebe => _hojeValorRecebe ?? 0.0;
  bool hasHojeValorRecebe() => _hojeValorRecebe != null;

  // "hoje_quantdd_vendida" field.
  double? _hojeQuantddVendida;
  double get hojeQuantddVendida => _hojeQuantddVendida ?? 0.0;
  bool hasHojeQuantddVendida() => _hojeQuantddVendida != null;

  // "total_cobrado" field.
  double? _totalCobrado;
  double get totalCobrado => _totalCobrado ?? 0.0;
  bool hasTotalCobrado() => _totalCobrado != null;

  // "total_pagar" field.
  double? _totalPagar;
  double get totalPagar => _totalPagar ?? 0.0;
  bool hasTotalPagar() => _totalPagar != null;

  // "quantdd_vendas" field.
  int? _quantddVendas;
  int get quantddVendas => _quantddVendas ?? 0;
  bool hasQuantddVendas() => _quantddVendas != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "atualizarShow" field.
  bool? _atualizarShow;
  bool get atualizarShow => _atualizarShow ?? false;
  bool hasAtualizarShow() => _atualizarShow != null;

  void _initializeFields() {
    _hojeValorTotal = castToType<double>(snapshotData['hoje_valor_total']);
    _hojeValorRecebe = castToType<double>(snapshotData['hoje_valor_recebe']);
    _hojeQuantddVendida =
        castToType<double>(snapshotData['hoje_quantdd_vendida']);
    _totalCobrado = castToType<double>(snapshotData['total_cobrado']);
    _totalPagar = castToType<double>(snapshotData['total_pagar']);
    _quantddVendas = castToType<int>(snapshotData['quantdd_vendas']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _atualizarShow = snapshotData['atualizarShow'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('financeiro');

  static Stream<FinanceiroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FinanceiroRecord.fromSnapshot(s));

  static Future<FinanceiroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FinanceiroRecord.fromSnapshot(s));

  static FinanceiroRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FinanceiroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FinanceiroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FinanceiroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FinanceiroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FinanceiroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFinanceiroRecordData({
  double? hojeValorTotal,
  double? hojeValorRecebe,
  double? hojeQuantddVendida,
  double? totalCobrado,
  double? totalPagar,
  int? quantddVendas,
  DateTime? createdAt,
  bool? atualizarShow,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hoje_valor_total': hojeValorTotal,
      'hoje_valor_recebe': hojeValorRecebe,
      'hoje_quantdd_vendida': hojeQuantddVendida,
      'total_cobrado': totalCobrado,
      'total_pagar': totalPagar,
      'quantdd_vendas': quantddVendas,
      'createdAt': createdAt,
      'atualizarShow': atualizarShow,
    }.withoutNulls,
  );

  return firestoreData;
}

class FinanceiroRecordDocumentEquality implements Equality<FinanceiroRecord> {
  const FinanceiroRecordDocumentEquality();

  @override
  bool equals(FinanceiroRecord? e1, FinanceiroRecord? e2) {
    return e1?.hojeValorTotal == e2?.hojeValorTotal &&
        e1?.hojeValorRecebe == e2?.hojeValorRecebe &&
        e1?.hojeQuantddVendida == e2?.hojeQuantddVendida &&
        e1?.totalCobrado == e2?.totalCobrado &&
        e1?.totalPagar == e2?.totalPagar &&
        e1?.quantddVendas == e2?.quantddVendas &&
        e1?.createdAt == e2?.createdAt &&
        e1?.atualizarShow == e2?.atualizarShow;
  }

  @override
  int hash(FinanceiroRecord? e) => const ListEquality().hash([
        e?.hojeValorTotal,
        e?.hojeValorRecebe,
        e?.hojeQuantddVendida,
        e?.totalCobrado,
        e?.totalPagar,
        e?.quantddVendas,
        e?.createdAt,
        e?.atualizarShow
      ]);

  @override
  bool isValidKey(Object? o) => o is FinanceiroRecord;
}
