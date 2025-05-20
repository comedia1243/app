import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParcelametoRecord extends FirestoreRecord {
  ParcelametoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "quantidadeParcelada" field.
  int? _quantidadeParcelada;
  int get quantidadeParcelada => _quantidadeParcelada ?? 0;
  bool hasQuantidadeParcelada() => _quantidadeParcelada != null;

  // "valorCadaParcela" field.
  double? _valorCadaParcela;
  double get valorCadaParcela => _valorCadaParcela ?? 0.0;
  bool hasValorCadaParcela() => _valorCadaParcela != null;

  // "dataVencimentoParcela" field.
  String? _dataVencimentoParcela;
  String get dataVencimentoParcela => _dataVencimentoParcela ?? '';
  bool hasDataVencimentoParcela() => _dataVencimentoParcela != null;

  // "dataLiquidacao" field.
  String? _dataLiquidacao;
  String get dataLiquidacao => _dataLiquidacao ?? '';
  bool hasDataLiquidacao() => _dataLiquidacao != null;

  // "venda" field.
  String? _venda;
  String get venda => _venda ?? '';
  bool hasVenda() => _venda != null;

  void _initializeFields() {
    _quantidadeParcelada = castToType<int>(snapshotData['quantidadeParcelada']);
    _valorCadaParcela = castToType<double>(snapshotData['valorCadaParcela']);
    _dataVencimentoParcela = snapshotData['dataVencimentoParcela'] as String?;
    _dataLiquidacao = snapshotData['dataLiquidacao'] as String?;
    _venda = snapshotData['venda'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parcelameto');

  static Stream<ParcelametoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParcelametoRecord.fromSnapshot(s));

  static Future<ParcelametoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParcelametoRecord.fromSnapshot(s));

  static ParcelametoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParcelametoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParcelametoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParcelametoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParcelametoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParcelametoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParcelametoRecordData({
  int? quantidadeParcelada,
  double? valorCadaParcela,
  String? dataVencimentoParcela,
  String? dataLiquidacao,
  String? venda,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'quantidadeParcelada': quantidadeParcelada,
      'valorCadaParcela': valorCadaParcela,
      'dataVencimentoParcela': dataVencimentoParcela,
      'dataLiquidacao': dataLiquidacao,
      'venda': venda,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParcelametoRecordDocumentEquality implements Equality<ParcelametoRecord> {
  const ParcelametoRecordDocumentEquality();

  @override
  bool equals(ParcelametoRecord? e1, ParcelametoRecord? e2) {
    return e1?.quantidadeParcelada == e2?.quantidadeParcelada &&
        e1?.valorCadaParcela == e2?.valorCadaParcela &&
        e1?.dataVencimentoParcela == e2?.dataVencimentoParcela &&
        e1?.dataLiquidacao == e2?.dataLiquidacao &&
        e1?.venda == e2?.venda;
  }

  @override
  int hash(ParcelametoRecord? e) => const ListEquality().hash([
        e?.quantidadeParcelada,
        e?.valorCadaParcela,
        e?.dataVencimentoParcela,
        e?.dataLiquidacao,
        e?.venda
      ]);

  @override
  bool isValidKey(Object? o) => o is ParcelametoRecord;
}
