import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreVendaRecord extends FirestoreRecord {
  PreVendaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "show" field.
  DocumentReference? _show;
  DocumentReference? get show => _show;
  bool hasShow() => _show != null;

  // "ingressos_select" field.
  List<DocumentReference>? _ingressosSelect;
  List<DocumentReference> get ingressosSelect => _ingressosSelect ?? const [];
  bool hasIngressosSelect() => _ingressosSelect != null;

  // "valorTotal" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  bool hasValorTotal() => _valorTotal != null;

  // "venda" field.
  DocumentReference? _venda;
  DocumentReference? get venda => _venda;
  bool hasVenda() => _venda != null;

  // "timeDelet" field.
  DateTime? _timeDelet;
  DateTime? get timeDelet => _timeDelet;
  bool hasTimeDelet() => _timeDelet != null;

  // "valorTotalReceber" field.
  double? _valorTotalReceber;
  double get valorTotalReceber => _valorTotalReceber ?? 0.0;
  bool hasValorTotalReceber() => _valorTotalReceber != null;

  // "valorDesconto" field.
  double? _valorDesconto;
  double get valorDesconto => _valorDesconto ?? 0.0;
  bool hasValorDesconto() => _valorDesconto != null;

  // "data_show" field.
  DocumentReference? _dataShow;
  DocumentReference? get dataShow => _dataShow;
  bool hasDataShow() => _dataShow != null;

  // "quantdd_ingressos" field.
  int? _quantddIngressos;
  int get quantddIngressos => _quantddIngressos ?? 0;
  bool hasQuantddIngressos() => _quantddIngressos != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "docId" field.
  String? _docId;
  String get docId => _docId ?? '';
  bool hasDocId() => _docId != null;

  // "salvo" field.
  bool? _salvo;
  bool get salvo => _salvo ?? false;
  bool hasSalvo() => _salvo != null;

  void _initializeFields() {
    _show = snapshotData['show'] as DocumentReference?;
    _ingressosSelect = getDataList(snapshotData['ingressos_select']);
    _valorTotal = castToType<double>(snapshotData['valorTotal']);
    _venda = snapshotData['venda'] as DocumentReference?;
    _timeDelet = snapshotData['timeDelet'] as DateTime?;
    _valorTotalReceber = castToType<double>(snapshotData['valorTotalReceber']);
    _valorDesconto = castToType<double>(snapshotData['valorDesconto']);
    _dataShow = snapshotData['data_show'] as DocumentReference?;
    _quantddIngressos = castToType<int>(snapshotData['quantdd_ingressos']);
    _status = snapshotData['status'] as String?;
    _docId = snapshotData['docId'] as String?;
    _salvo = snapshotData['salvo'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('preVenda');

  static Stream<PreVendaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreVendaRecord.fromSnapshot(s));

  static Future<PreVendaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PreVendaRecord.fromSnapshot(s));

  static PreVendaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreVendaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreVendaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreVendaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreVendaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreVendaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreVendaRecordData({
  DocumentReference? show,
  double? valorTotal,
  DocumentReference? venda,
  DateTime? timeDelet,
  double? valorTotalReceber,
  double? valorDesconto,
  DocumentReference? dataShow,
  int? quantddIngressos,
  String? status,
  String? docId,
  bool? salvo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'show': show,
      'valorTotal': valorTotal,
      'venda': venda,
      'timeDelet': timeDelet,
      'valorTotalReceber': valorTotalReceber,
      'valorDesconto': valorDesconto,
      'data_show': dataShow,
      'quantdd_ingressos': quantddIngressos,
      'status': status,
      'docId': docId,
      'salvo': salvo,
    }.withoutNulls,
  );

  return firestoreData;
}

class PreVendaRecordDocumentEquality implements Equality<PreVendaRecord> {
  const PreVendaRecordDocumentEquality();

  @override
  bool equals(PreVendaRecord? e1, PreVendaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.show == e2?.show &&
        listEquality.equals(e1?.ingressosSelect, e2?.ingressosSelect) &&
        e1?.valorTotal == e2?.valorTotal &&
        e1?.venda == e2?.venda &&
        e1?.timeDelet == e2?.timeDelet &&
        e1?.valorTotalReceber == e2?.valorTotalReceber &&
        e1?.valorDesconto == e2?.valorDesconto &&
        e1?.dataShow == e2?.dataShow &&
        e1?.quantddIngressos == e2?.quantddIngressos &&
        e1?.status == e2?.status &&
        e1?.docId == e2?.docId &&
        e1?.salvo == e2?.salvo;
  }

  @override
  int hash(PreVendaRecord? e) => const ListEquality().hash([
        e?.show,
        e?.ingressosSelect,
        e?.valorTotal,
        e?.venda,
        e?.timeDelet,
        e?.valorTotalReceber,
        e?.valorDesconto,
        e?.dataShow,
        e?.quantddIngressos,
        e?.status,
        e?.docId,
        e?.salvo
      ]);

  @override
  bool isValidKey(Object? o) => o is PreVendaRecord;
}
