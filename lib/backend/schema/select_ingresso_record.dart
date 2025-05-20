import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectIngressoRecord extends FirestoreRecord {
  SelectIngressoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ingresso" field.
  DocumentReference? _ingresso;
  DocumentReference? get ingresso => _ingresso;
  bool hasIngresso() => _ingresso != null;

  // "quantdd" field.
  int? _quantdd;
  int get quantdd => _quantdd ?? 0;
  bool hasQuantdd() => _quantdd != null;

  // "salvo" field.
  bool? _salvo;
  bool get salvo => _salvo ?? false;
  bool hasSalvo() => _salvo != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "prevenda" field.
  DocumentReference? _prevenda;
  DocumentReference? get prevenda => _prevenda;
  bool hasPrevenda() => _prevenda != null;

  // "cliente_nome" field.
  String? _clienteNome;
  String get clienteNome => _clienteNome ?? '';
  bool hasClienteNome() => _clienteNome != null;

  // "cliente_email" field.
  String? _clienteEmail;
  String get clienteEmail => _clienteEmail ?? '';
  bool hasClienteEmail() => _clienteEmail != null;

  // "cliente_cpf" field.
  String? _clienteCpf;
  String get clienteCpf => _clienteCpf ?? '';
  bool hasClienteCpf() => _clienteCpf != null;

  // "cliente_celular" field.
  String? _clienteCelular;
  String get clienteCelular => _clienteCelular ?? '';
  bool hasClienteCelular() => _clienteCelular != null;

  // "Check_Form" field.
  bool? _checkForm;
  bool get checkForm => _checkForm ?? false;
  bool hasCheckForm() => _checkForm != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "data_show" field.
  DocumentReference? _dataShow;
  DocumentReference? get dataShow => _dataShow;
  bool hasDataShow() => _dataShow != null;

  // "ingresso_nome" field.
  String? _ingressoNome;
  String get ingressoNome => _ingressoNome ?? '';
  bool hasIngressoNome() => _ingressoNome != null;

  // "prevendaid" field.
  String? _prevendaid;
  String get prevendaid => _prevendaid ?? '';
  bool hasPrevendaid() => _prevendaid != null;

  // "show" field.
  DocumentReference? _show;
  DocumentReference? get show => _show;
  bool hasShow() => _show != null;

  // "venda" field.
  DocumentReference? _venda;
  DocumentReference? get venda => _venda;
  bool hasVenda() => _venda != null;

  // "dataEvento" field.
  DateTime? _dataEvento;
  DateTime? get dataEvento => _dataEvento;
  bool hasDataEvento() => _dataEvento != null;

  // "ValorReceber" field.
  double? _valorReceber;
  double get valorReceber => _valorReceber ?? 0.0;
  bool hasValorReceber() => _valorReceber != null;

  // "dataCriacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  void _initializeFields() {
    _ingresso = snapshotData['ingresso'] as DocumentReference?;
    _quantdd = castToType<int>(snapshotData['quantdd']);
    _salvo = snapshotData['salvo'] as bool?;
    _id = snapshotData['id'] as String?;
    _prevenda = snapshotData['prevenda'] as DocumentReference?;
    _clienteNome = snapshotData['cliente_nome'] as String?;
    _clienteEmail = snapshotData['cliente_email'] as String?;
    _clienteCpf = snapshotData['cliente_cpf'] as String?;
    _clienteCelular = snapshotData['cliente_celular'] as String?;
    _checkForm = snapshotData['Check_Form'] as bool?;
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _dataShow = snapshotData['data_show'] as DocumentReference?;
    _ingressoNome = snapshotData['ingresso_nome'] as String?;
    _prevendaid = snapshotData['prevendaid'] as String?;
    _show = snapshotData['show'] as DocumentReference?;
    _venda = snapshotData['venda'] as DocumentReference?;
    _dataEvento = snapshotData['dataEvento'] as DateTime?;
    _valorReceber = castToType<double>(snapshotData['ValorReceber']);
    _dataCriacao = snapshotData['dataCriacao'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('select_ingresso');

  static Stream<SelectIngressoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SelectIngressoRecord.fromSnapshot(s));

  static Future<SelectIngressoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SelectIngressoRecord.fromSnapshot(s));

  static SelectIngressoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SelectIngressoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SelectIngressoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SelectIngressoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SelectIngressoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SelectIngressoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSelectIngressoRecordData({
  DocumentReference? ingresso,
  int? quantdd,
  bool? salvo,
  String? id,
  DocumentReference? prevenda,
  String? clienteNome,
  String? clienteEmail,
  String? clienteCpf,
  String? clienteCelular,
  bool? checkForm,
  double? subTotal,
  DocumentReference? dataShow,
  String? ingressoNome,
  String? prevendaid,
  DocumentReference? show,
  DocumentReference? venda,
  DateTime? dataEvento,
  double? valorReceber,
  DateTime? dataCriacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ingresso': ingresso,
      'quantdd': quantdd,
      'salvo': salvo,
      'id': id,
      'prevenda': prevenda,
      'cliente_nome': clienteNome,
      'cliente_email': clienteEmail,
      'cliente_cpf': clienteCpf,
      'cliente_celular': clienteCelular,
      'Check_Form': checkForm,
      'subTotal': subTotal,
      'data_show': dataShow,
      'ingresso_nome': ingressoNome,
      'prevendaid': prevendaid,
      'show': show,
      'venda': venda,
      'dataEvento': dataEvento,
      'ValorReceber': valorReceber,
      'dataCriacao': dataCriacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class SelectIngressoRecordDocumentEquality
    implements Equality<SelectIngressoRecord> {
  const SelectIngressoRecordDocumentEquality();

  @override
  bool equals(SelectIngressoRecord? e1, SelectIngressoRecord? e2) {
    return e1?.ingresso == e2?.ingresso &&
        e1?.quantdd == e2?.quantdd &&
        e1?.salvo == e2?.salvo &&
        e1?.id == e2?.id &&
        e1?.prevenda == e2?.prevenda &&
        e1?.clienteNome == e2?.clienteNome &&
        e1?.clienteEmail == e2?.clienteEmail &&
        e1?.clienteCpf == e2?.clienteCpf &&
        e1?.clienteCelular == e2?.clienteCelular &&
        e1?.checkForm == e2?.checkForm &&
        e1?.subTotal == e2?.subTotal &&
        e1?.dataShow == e2?.dataShow &&
        e1?.ingressoNome == e2?.ingressoNome &&
        e1?.prevendaid == e2?.prevendaid &&
        e1?.show == e2?.show &&
        e1?.venda == e2?.venda &&
        e1?.dataEvento == e2?.dataEvento &&
        e1?.valorReceber == e2?.valorReceber &&
        e1?.dataCriacao == e2?.dataCriacao;
  }

  @override
  int hash(SelectIngressoRecord? e) => const ListEquality().hash([
        e?.ingresso,
        e?.quantdd,
        e?.salvo,
        e?.id,
        e?.prevenda,
        e?.clienteNome,
        e?.clienteEmail,
        e?.clienteCpf,
        e?.clienteCelular,
        e?.checkForm,
        e?.subTotal,
        e?.dataShow,
        e?.ingressoNome,
        e?.prevendaid,
        e?.show,
        e?.venda,
        e?.dataEvento,
        e?.valorReceber,
        e?.dataCriacao
      ]);

  @override
  bool isValidKey(Object? o) => o is SelectIngressoRecord;
}
