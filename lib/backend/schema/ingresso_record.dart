import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngressoRecord extends FirestoreRecord {
  IngressoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "valorSemTaxa" field.
  double? _valorSemTaxa;
  double get valorSemTaxa => _valorSemTaxa ?? 0.0;
  bool hasValorSemTaxa() => _valorSemTaxa != null;

  // "valorComTaxa" field.
  double? _valorComTaxa;
  double get valorComTaxa => _valorComTaxa ?? 0.0;
  bool hasValorComTaxa() => _valorComTaxa != null;

  // "valorBilheteria" field.
  double? _valorBilheteria;
  double get valorBilheteria => _valorBilheteria ?? 0.0;
  bool hasValorBilheteria() => _valorBilheteria != null;

  // "data" field.
  DocumentReference? _data;
  DocumentReference? get data => _data;
  bool hasData() => _data != null;

  // "dataCriacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  // "show" field.
  DocumentReference? _show;
  DocumentReference? get show => _show;
  bool hasShow() => _show != null;

  // "valoTaxa" field.
  double? _valoTaxa;
  double get valoTaxa => _valoTaxa ?? 0.0;
  bool hasValoTaxa() => _valoTaxa != null;

  // "valorDesconto" field.
  double? _valorDesconto;
  double get valorDesconto => _valorDesconto ?? 0.0;
  bool hasValorDesconto() => _valorDesconto != null;

  // "vendas" field.
  List<String>? _vendas;
  List<String> get vendas => _vendas ?? const [];
  bool hasVendas() => _vendas != null;

  // "quantidadeRestante" field.
  int? _quantidadeRestante;
  int get quantidadeRestante => _quantidadeRestante ?? 0;
  bool hasQuantidadeRestante() => _quantidadeRestante != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "valido_quantas_pessoas" field.
  int? _validoQuantasPessoas;
  int get validoQuantasPessoas => _validoQuantasPessoas ?? 0;
  bool hasValidoQuantasPessoas() => _validoQuantasPessoas != null;

  // "suspender" field.
  int? _suspender;
  int get suspender => _suspender ?? 0;
  bool hasSuspender() => _suspender != null;

  // "ocultar" field.
  bool? _ocultar;
  bool get ocultar => _ocultar ?? false;
  bool hasOcultar() => _ocultar != null;

  // "finalizacaoVenda" field.
  DateTime? _finalizacaoVenda;
  DateTime? get finalizacaoVenda => _finalizacaoVenda;
  bool hasFinalizacaoVenda() => _finalizacaoVenda != null;

  // "cupom" field.
  DocumentReference? _cupom;
  DocumentReference? get cupom => _cupom;
  bool hasCupom() => _cupom != null;

  // "quantidade_vendido" field.
  int? _quantidadeVendido;
  int get quantidadeVendido => _quantidadeVendido ?? 0;
  bool hasQuantidadeVendido() => _quantidadeVendido != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _quantidade = castToType<int>(snapshotData['quantidade']);
    _valorSemTaxa = castToType<double>(snapshotData['valorSemTaxa']);
    _valorComTaxa = castToType<double>(snapshotData['valorComTaxa']);
    _valorBilheteria = castToType<double>(snapshotData['valorBilheteria']);
    _data = snapshotData['data'] as DocumentReference?;
    _dataCriacao = snapshotData['dataCriacao'] as DateTime?;
    _show = snapshotData['show'] as DocumentReference?;
    _valoTaxa = castToType<double>(snapshotData['valoTaxa']);
    _valorDesconto = castToType<double>(snapshotData['valorDesconto']);
    _vendas = getDataList(snapshotData['vendas']);
    _quantidadeRestante = castToType<int>(snapshotData['quantidadeRestante']);
    _descricao = snapshotData['descricao'] as String?;
    _validoQuantasPessoas =
        castToType<int>(snapshotData['valido_quantas_pessoas']);
    _suspender = castToType<int>(snapshotData['suspender']);
    _ocultar = snapshotData['ocultar'] as bool?;
    _finalizacaoVenda = snapshotData['finalizacaoVenda'] as DateTime?;
    _cupom = snapshotData['cupom'] as DocumentReference?;
    _quantidadeVendido = castToType<int>(snapshotData['quantidade_vendido']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ingresso');

  static Stream<IngressoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IngressoRecord.fromSnapshot(s));

  static Future<IngressoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IngressoRecord.fromSnapshot(s));

  static IngressoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IngressoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IngressoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IngressoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IngressoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IngressoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIngressoRecordData({
  String? nome,
  int? quantidade,
  double? valorSemTaxa,
  double? valorComTaxa,
  double? valorBilheteria,
  DocumentReference? data,
  DateTime? dataCriacao,
  DocumentReference? show,
  double? valoTaxa,
  double? valorDesconto,
  int? quantidadeRestante,
  String? descricao,
  int? validoQuantasPessoas,
  int? suspender,
  bool? ocultar,
  DateTime? finalizacaoVenda,
  DocumentReference? cupom,
  int? quantidadeVendido,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'quantidade': quantidade,
      'valorSemTaxa': valorSemTaxa,
      'valorComTaxa': valorComTaxa,
      'valorBilheteria': valorBilheteria,
      'data': data,
      'dataCriacao': dataCriacao,
      'show': show,
      'valoTaxa': valoTaxa,
      'valorDesconto': valorDesconto,
      'quantidadeRestante': quantidadeRestante,
      'descricao': descricao,
      'valido_quantas_pessoas': validoQuantasPessoas,
      'suspender': suspender,
      'ocultar': ocultar,
      'finalizacaoVenda': finalizacaoVenda,
      'cupom': cupom,
      'quantidade_vendido': quantidadeVendido,
    }.withoutNulls,
  );

  return firestoreData;
}

class IngressoRecordDocumentEquality implements Equality<IngressoRecord> {
  const IngressoRecordDocumentEquality();

  @override
  bool equals(IngressoRecord? e1, IngressoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.quantidade == e2?.quantidade &&
        e1?.valorSemTaxa == e2?.valorSemTaxa &&
        e1?.valorComTaxa == e2?.valorComTaxa &&
        e1?.valorBilheteria == e2?.valorBilheteria &&
        e1?.data == e2?.data &&
        e1?.dataCriacao == e2?.dataCriacao &&
        e1?.show == e2?.show &&
        e1?.valoTaxa == e2?.valoTaxa &&
        e1?.valorDesconto == e2?.valorDesconto &&
        listEquality.equals(e1?.vendas, e2?.vendas) &&
        e1?.quantidadeRestante == e2?.quantidadeRestante &&
        e1?.descricao == e2?.descricao &&
        e1?.validoQuantasPessoas == e2?.validoQuantasPessoas &&
        e1?.suspender == e2?.suspender &&
        e1?.ocultar == e2?.ocultar &&
        e1?.finalizacaoVenda == e2?.finalizacaoVenda &&
        e1?.cupom == e2?.cupom &&
        e1?.quantidadeVendido == e2?.quantidadeVendido;
  }

  @override
  int hash(IngressoRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.quantidade,
        e?.valorSemTaxa,
        e?.valorComTaxa,
        e?.valorBilheteria,
        e?.data,
        e?.dataCriacao,
        e?.show,
        e?.valoTaxa,
        e?.valorDesconto,
        e?.vendas,
        e?.quantidadeRestante,
        e?.descricao,
        e?.validoQuantasPessoas,
        e?.suspender,
        e?.ocultar,
        e?.finalizacaoVenda,
        e?.cupom,
        e?.quantidadeVendido
      ]);

  @override
  bool isValidKey(Object? o) => o is IngressoRecord;
}
