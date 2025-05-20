import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CupomRecord extends FirestoreRecord {
  CupomRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "data" field.
  DocumentReference? _data;
  DocumentReference? get data => _data;
  bool hasData() => _data != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "show" field.
  DocumentReference? _show;
  DocumentReference? get show => _show;
  bool hasShow() => _show != null;

  // "ingresso" field.
  DocumentReference? _ingresso;
  DocumentReference? get ingresso => _ingresso;
  bool hasIngresso() => _ingresso != null;

  // "quantidadeRestante" field.
  int? _quantidadeRestante;
  int get quantidadeRestante => _quantidadeRestante ?? 0;
  bool hasQuantidadeRestante() => _quantidadeRestante != null;

  // "tipoUso" field.
  String? _tipoUso;
  String get tipoUso => _tipoUso ?? '';
  bool hasTipoUso() => _tipoUso != null;

  // "local" field.
  DocumentReference? _local;
  DocumentReference? get local => _local;
  bool hasLocal() => _local != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _quantidade = castToType<int>(snapshotData['quantidade']);
    _data = snapshotData['data'] as DocumentReference?;
    _valor = castToType<double>(snapshotData['valor']);
    _show = snapshotData['show'] as DocumentReference?;
    _ingresso = snapshotData['ingresso'] as DocumentReference?;
    _quantidadeRestante = castToType<int>(snapshotData['quantidadeRestante']);
    _tipoUso = snapshotData['tipoUso'] as String?;
    _local = snapshotData['local'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cupom');

  static Stream<CupomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CupomRecord.fromSnapshot(s));

  static Future<CupomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CupomRecord.fromSnapshot(s));

  static CupomRecord fromSnapshot(DocumentSnapshot snapshot) => CupomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CupomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CupomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CupomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CupomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCupomRecordData({
  String? nome,
  String? tipo,
  int? quantidade,
  DocumentReference? data,
  double? valor,
  DocumentReference? show,
  DocumentReference? ingresso,
  int? quantidadeRestante,
  String? tipoUso,
  DocumentReference? local,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'tipo': tipo,
      'quantidade': quantidade,
      'data': data,
      'valor': valor,
      'show': show,
      'ingresso': ingresso,
      'quantidadeRestante': quantidadeRestante,
      'tipoUso': tipoUso,
      'local': local,
    }.withoutNulls,
  );

  return firestoreData;
}

class CupomRecordDocumentEquality implements Equality<CupomRecord> {
  const CupomRecordDocumentEquality();

  @override
  bool equals(CupomRecord? e1, CupomRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.tipo == e2?.tipo &&
        e1?.quantidade == e2?.quantidade &&
        e1?.data == e2?.data &&
        e1?.valor == e2?.valor &&
        e1?.show == e2?.show &&
        e1?.ingresso == e2?.ingresso &&
        e1?.quantidadeRestante == e2?.quantidadeRestante &&
        e1?.tipoUso == e2?.tipoUso &&
        e1?.local == e2?.local;
  }

  @override
  int hash(CupomRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.tipo,
        e?.quantidade,
        e?.data,
        e?.valor,
        e?.show,
        e?.ingresso,
        e?.quantidadeRestante,
        e?.tipoUso,
        e?.local
      ]);

  @override
  bool isValidKey(Object? o) => o is CupomRecord;
}
