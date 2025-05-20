import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataRecord extends FirestoreRecord {
  DataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "show" field.
  DocumentReference? _show;
  DocumentReference? get show => _show;
  bool hasShow() => _show != null;

  // "ingressos" field.
  List<DocumentReference>? _ingressos;
  List<DocumentReference> get ingressos => _ingressos ?? const [];
  bool hasIngressos() => _ingressos != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "dataCriacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  // "total_ingressos" field.
  int? _totalIngressos;
  int get totalIngressos => _totalIngressos ?? 0;
  bool hasTotalIngressos() => _totalIngressos != null;

  // "total_vendido" field.
  int? _totalVendido;
  int get totalVendido => _totalVendido ?? 0;
  bool hasTotalVendido() => _totalVendido != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "pago" field.
  bool? _pago;
  bool get pago => _pago ?? false;
  bool hasPago() => _pago != null;

  // "pagoData" field.
  DateTime? _pagoData;
  DateTime? get pagoData => _pagoData;
  bool hasPagoData() => _pagoData != null;

  // "valorTotal" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  bool hasValorTotal() => _valorTotal != null;

  // "valorReceber" field.
  double? _valorReceber;
  double get valorReceber => _valorReceber ?? 0.0;
  bool hasValorReceber() => _valorReceber != null;

  // "valorPlataforma" field.
  double? _valorPlataforma;
  double get valorPlataforma => _valorPlataforma ?? 0.0;
  bool hasValorPlataforma() => _valorPlataforma != null;

  // "comprovante" field.
  String? _comprovante;
  String get comprovante => _comprovante ?? '';
  bool hasComprovante() => _comprovante != null;

  // "estaOculto" field.
  bool? _estaOculto;
  bool get estaOculto => _estaOculto ?? false;
  bool hasEstaOculto() => _estaOculto != null;

  // "local" field.
  DocumentReference? _local;
  DocumentReference? get local => _local;
  bool hasLocal() => _local != null;

  void _initializeFields() {
    _data = snapshotData['data'] as DateTime?;
    _show = snapshotData['show'] as DocumentReference?;
    _ingressos = getDataList(snapshotData['ingressos']);
    _id = snapshotData['id'] as String?;
    _dataCriacao = snapshotData['dataCriacao'] as DateTime?;
    _totalIngressos = castToType<int>(snapshotData['total_ingressos']);
    _totalVendido = castToType<int>(snapshotData['total_vendido']);
    _status = snapshotData['status'] as String?;
    _pago = snapshotData['pago'] as bool?;
    _pagoData = snapshotData['pagoData'] as DateTime?;
    _valorTotal = castToType<double>(snapshotData['valorTotal']);
    _valorReceber = castToType<double>(snapshotData['valorReceber']);
    _valorPlataforma = castToType<double>(snapshotData['valorPlataforma']);
    _comprovante = snapshotData['comprovante'] as String?;
    _estaOculto = snapshotData['estaOculto'] as bool?;
    _local = snapshotData['local'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('data');

  static Stream<DataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DataRecord.fromSnapshot(s));

  static Future<DataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DataRecord.fromSnapshot(s));

  static DataRecord fromSnapshot(DocumentSnapshot snapshot) => DataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDataRecordData({
  DateTime? data,
  DocumentReference? show,
  String? id,
  DateTime? dataCriacao,
  int? totalIngressos,
  int? totalVendido,
  String? status,
  bool? pago,
  DateTime? pagoData,
  double? valorTotal,
  double? valorReceber,
  double? valorPlataforma,
  String? comprovante,
  bool? estaOculto,
  DocumentReference? local,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'data': data,
      'show': show,
      'id': id,
      'dataCriacao': dataCriacao,
      'total_ingressos': totalIngressos,
      'total_vendido': totalVendido,
      'status': status,
      'pago': pago,
      'pagoData': pagoData,
      'valorTotal': valorTotal,
      'valorReceber': valorReceber,
      'valorPlataforma': valorPlataforma,
      'comprovante': comprovante,
      'estaOculto': estaOculto,
      'local': local,
    }.withoutNulls,
  );

  return firestoreData;
}

class DataRecordDocumentEquality implements Equality<DataRecord> {
  const DataRecordDocumentEquality();

  @override
  bool equals(DataRecord? e1, DataRecord? e2) {
    const listEquality = ListEquality();
    return e1?.data == e2?.data &&
        e1?.show == e2?.show &&
        listEquality.equals(e1?.ingressos, e2?.ingressos) &&
        e1?.id == e2?.id &&
        e1?.dataCriacao == e2?.dataCriacao &&
        e1?.totalIngressos == e2?.totalIngressos &&
        e1?.totalVendido == e2?.totalVendido &&
        e1?.status == e2?.status &&
        e1?.pago == e2?.pago &&
        e1?.pagoData == e2?.pagoData &&
        e1?.valorTotal == e2?.valorTotal &&
        e1?.valorReceber == e2?.valorReceber &&
        e1?.valorPlataforma == e2?.valorPlataforma &&
        e1?.comprovante == e2?.comprovante &&
        e1?.estaOculto == e2?.estaOculto &&
        e1?.local == e2?.local;
  }

  @override
  int hash(DataRecord? e) => const ListEquality().hash([
        e?.data,
        e?.show,
        e?.ingressos,
        e?.id,
        e?.dataCriacao,
        e?.totalIngressos,
        e?.totalVendido,
        e?.status,
        e?.pago,
        e?.pagoData,
        e?.valorTotal,
        e?.valorReceber,
        e?.valorPlataforma,
        e?.comprovante,
        e?.estaOculto,
        e?.local
      ]);

  @override
  bool isValidKey(Object? o) => o is DataRecord;
}
