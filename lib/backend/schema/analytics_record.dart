import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnalyticsRecord extends FirestoreRecord {
  AnalyticsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "identificador" field.
  String? _identificador;
  String get identificador => _identificador ?? '';
  bool hasIdentificador() => _identificador != null;

  // "qual" field.
  String? _qual;
  String get qual => _qual ?? '';
  bool hasQual() => _qual != null;

  // "show" field.
  DocumentReference? _show;
  DocumentReference? get show => _show;
  bool hasShow() => _show != null;

  // "pagina_carregada" field.
  bool? _paginaCarregada;
  bool get paginaCarregada => _paginaCarregada ?? false;
  bool hasPaginaCarregada() => _paginaCarregada != null;

  // "pagamentoIniciado" field.
  bool? _pagamentoIniciado;
  bool get pagamentoIniciado => _pagamentoIniciado ?? false;
  bool hasPagamentoIniciado() => _pagamentoIniciado != null;

  // "compraFinalizada" field.
  bool? _compraFinalizada;
  bool get compraFinalizada => _compraFinalizada ?? false;
  bool hasCompraFinalizada() => _compraFinalizada != null;

  void _initializeFields() {
    _identificador = snapshotData['identificador'] as String?;
    _qual = snapshotData['qual'] as String?;
    _show = snapshotData['show'] as DocumentReference?;
    _paginaCarregada = snapshotData['pagina_carregada'] as bool?;
    _pagamentoIniciado = snapshotData['pagamentoIniciado'] as bool?;
    _compraFinalizada = snapshotData['compraFinalizada'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Analytics');

  static Stream<AnalyticsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnalyticsRecord.fromSnapshot(s));

  static Future<AnalyticsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnalyticsRecord.fromSnapshot(s));

  static AnalyticsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnalyticsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnalyticsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnalyticsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnalyticsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnalyticsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnalyticsRecordData({
  String? identificador,
  String? qual,
  DocumentReference? show,
  bool? paginaCarregada,
  bool? pagamentoIniciado,
  bool? compraFinalizada,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'identificador': identificador,
      'qual': qual,
      'show': show,
      'pagina_carregada': paginaCarregada,
      'pagamentoIniciado': pagamentoIniciado,
      'compraFinalizada': compraFinalizada,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnalyticsRecordDocumentEquality implements Equality<AnalyticsRecord> {
  const AnalyticsRecordDocumentEquality();

  @override
  bool equals(AnalyticsRecord? e1, AnalyticsRecord? e2) {
    return e1?.identificador == e2?.identificador &&
        e1?.qual == e2?.qual &&
        e1?.show == e2?.show &&
        e1?.paginaCarregada == e2?.paginaCarregada &&
        e1?.pagamentoIniciado == e2?.pagamentoIniciado &&
        e1?.compraFinalizada == e2?.compraFinalizada;
  }

  @override
  int hash(AnalyticsRecord? e) => const ListEquality().hash([
        e?.identificador,
        e?.qual,
        e?.show,
        e?.paginaCarregada,
        e?.pagamentoIniciado,
        e?.compraFinalizada
      ]);

  @override
  bool isValidKey(Object? o) => o is AnalyticsRecord;
}
