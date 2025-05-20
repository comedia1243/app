import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShowsRecord extends FirestoreRecord {
  ShowsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "sinopse" field.
  String? _sinopse;
  String get sinopse => _sinopse ?? '';
  bool hasSinopse() => _sinopse != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "tarja" field.
  String? _tarja;
  String get tarja => _tarja ?? '';
  bool hasTarja() => _tarja != null;

  // "local" field.
  DocumentReference? _local;
  DocumentReference? get local => _local;
  bool hasLocal() => _local != null;

  // "faxaEtaria" field.
  String? _faxaEtaria;
  String get faxaEtaria => _faxaEtaria ?? '';
  bool hasFaxaEtaria() => _faxaEtaria != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "datasID" field.
  List<String>? _datasID;
  List<String> get datasID => _datasID ?? const [];
  bool hasDatasID() => _datasID != null;

  // "dataCriacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  // "informacao" field.
  String? _informacao;
  String get informacao => _informacao ?? '';
  bool hasInformacao() => _informacao != null;

  // "MediaAvaliacao" field.
  double? _mediaAvaliacao;
  double get mediaAvaliacao => _mediaAvaliacao ?? 0.0;
  bool hasMediaAvaliacao() => _mediaAvaliacao != null;

  // "MaiorDesconto" field.
  double? _maiorDesconto;
  double get maiorDesconto => _maiorDesconto ?? 0.0;
  bool hasMaiorDesconto() => _maiorDesconto != null;

  // "oculto" field.
  bool? _oculto;
  bool get oculto => _oculto ?? false;
  bool hasOculto() => _oculto != null;

  // "destaque" field.
  bool? _destaque;
  bool get destaque => _destaque ?? false;
  bool hasDestaque() => _destaque != null;

  // "produtores" field.
  List<String>? _produtores;
  List<String> get produtores => _produtores ?? const [];
  bool hasProdutores() => _produtores != null;

  // "valor_receber" field.
  double? _valorReceber;
  double get valorReceber => _valorReceber ?? 0.0;
  bool hasValorReceber() => _valorReceber != null;

  // "quantidade_vendida" field.
  int? _quantidadeVendida;
  int get quantidadeVendida => _quantidadeVendida ?? 0;
  bool hasQuantidadeVendida() => _quantidadeVendida != null;

  // "valor_total" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  bool hasValorTotal() => _valorTotal != null;

  // "visualizacoes" field.
  int? _visualizacoes;
  int get visualizacoes => _visualizacoes ?? 0;
  bool hasVisualizacoes() => _visualizacoes != null;

  // "fotoCasa" field.
  String? _fotoCasa;
  String get fotoCasa => _fotoCasa ?? '';
  bool hasFotoCasa() => _fotoCasa != null;

  // "proximaData" field.
  DateTime? _proximaData;
  DateTime? get proximaData => _proximaData;
  bool hasProximaData() => _proximaData != null;

  // "proximaDataText" field.
  String? _proximaDataText;
  String get proximaDataText => _proximaDataText ?? '';
  bool hasProximaDataText() => _proximaDataText != null;

  // "txtFtMapa" field.
  String? _txtFtMapa;
  String get txtFtMapa => _txtFtMapa ?? '';
  bool hasTxtFtMapa() => _txtFtMapa != null;

  // "criador" field.
  DocumentReference? _criador;
  DocumentReference? get criador => _criador;
  bool hasCriador() => _criador != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  bool hasSlug() => _slug != null;

  // "avaliacoes" field.
  List<double>? _avaliacoes;
  List<double> get avaliacoes => _avaliacoes ?? const [];
  bool hasAvaliacoes() => _avaliacoes != null;

  // "datasText" field.
  List<String>? _datasText;
  List<String> get datasText => _datasText ?? const [];
  bool hasDatasText() => _datasText != null;

  // "destaques" field.
  DocumentReference? _destaques;
  DocumentReference? get destaques => _destaques;
  bool hasDestaques() => _destaques != null;

  // "fotoAtualiza" field.
  String? _fotoAtualiza;
  String get fotoAtualiza => _fotoAtualiza ?? '';
  bool hasFotoAtualiza() => _fotoAtualiza != null;

  // "identificador" field.
  String? _identificador;
  String get identificador => _identificador ?? '';
  bool hasIdentificador() => _identificador != null;

  // "localNome" field.
  String? _localNome;
  String get localNome => _localNome ?? '';
  bool hasLocalNome() => _localNome != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _sinopse = snapshotData['sinopse'] as String?;
    _foto = snapshotData['foto'] as String?;
    _tarja = snapshotData['tarja'] as String?;
    _local = snapshotData['local'] as DocumentReference?;
    _faxaEtaria = snapshotData['faxaEtaria'] as String?;
    _id = snapshotData['id'] as String?;
    _datasID = getDataList(snapshotData['datasID']);
    _dataCriacao = snapshotData['dataCriacao'] as DateTime?;
    _informacao = snapshotData['informacao'] as String?;
    _mediaAvaliacao = castToType<double>(snapshotData['MediaAvaliacao']);
    _maiorDesconto = castToType<double>(snapshotData['MaiorDesconto']);
    _oculto = snapshotData['oculto'] as bool?;
    _destaque = snapshotData['destaque'] as bool?;
    _produtores = getDataList(snapshotData['produtores']);
    _valorReceber = castToType<double>(snapshotData['valor_receber']);
    _quantidadeVendida = castToType<int>(snapshotData['quantidade_vendida']);
    _valorTotal = castToType<double>(snapshotData['valor_total']);
    _visualizacoes = castToType<int>(snapshotData['visualizacoes']);
    _fotoCasa = snapshotData['fotoCasa'] as String?;
    _proximaData = snapshotData['proximaData'] as DateTime?;
    _proximaDataText = snapshotData['proximaDataText'] as String?;
    _txtFtMapa = snapshotData['txtFtMapa'] as String?;
    _criador = snapshotData['criador'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _slug = snapshotData['slug'] as String?;
    _avaliacoes = getDataList(snapshotData['avaliacoes']);
    _datasText = getDataList(snapshotData['datasText']);
    _destaques = snapshotData['destaques'] as DocumentReference?;
    _fotoAtualiza = snapshotData['fotoAtualiza'] as String?;
    _identificador = snapshotData['identificador'] as String?;
    _localNome = snapshotData['localNome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shows');

  static Stream<ShowsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShowsRecord.fromSnapshot(s));

  static Future<ShowsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShowsRecord.fromSnapshot(s));

  static ShowsRecord fromSnapshot(DocumentSnapshot snapshot) => ShowsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShowsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShowsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShowsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShowsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShowsRecordData({
  String? nome,
  String? sinopse,
  String? foto,
  String? tarja,
  DocumentReference? local,
  String? faxaEtaria,
  String? id,
  DateTime? dataCriacao,
  String? informacao,
  double? mediaAvaliacao,
  double? maiorDesconto,
  bool? oculto,
  bool? destaque,
  double? valorReceber,
  int? quantidadeVendida,
  double? valorTotal,
  int? visualizacoes,
  String? fotoCasa,
  DateTime? proximaData,
  String? proximaDataText,
  String? txtFtMapa,
  DocumentReference? criador,
  String? status,
  String? slug,
  DocumentReference? destaques,
  String? fotoAtualiza,
  String? identificador,
  String? localNome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'sinopse': sinopse,
      'foto': foto,
      'tarja': tarja,
      'local': local,
      'faxaEtaria': faxaEtaria,
      'id': id,
      'dataCriacao': dataCriacao,
      'informacao': informacao,
      'MediaAvaliacao': mediaAvaliacao,
      'MaiorDesconto': maiorDesconto,
      'oculto': oculto,
      'destaque': destaque,
      'valor_receber': valorReceber,
      'quantidade_vendida': quantidadeVendida,
      'valor_total': valorTotal,
      'visualizacoes': visualizacoes,
      'fotoCasa': fotoCasa,
      'proximaData': proximaData,
      'proximaDataText': proximaDataText,
      'txtFtMapa': txtFtMapa,
      'criador': criador,
      'status': status,
      'slug': slug,
      'destaques': destaques,
      'fotoAtualiza': fotoAtualiza,
      'identificador': identificador,
      'localNome': localNome,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShowsRecordDocumentEquality implements Equality<ShowsRecord> {
  const ShowsRecordDocumentEquality();

  @override
  bool equals(ShowsRecord? e1, ShowsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.sinopse == e2?.sinopse &&
        e1?.foto == e2?.foto &&
        e1?.tarja == e2?.tarja &&
        e1?.local == e2?.local &&
        e1?.faxaEtaria == e2?.faxaEtaria &&
        e1?.id == e2?.id &&
        listEquality.equals(e1?.datasID, e2?.datasID) &&
        e1?.dataCriacao == e2?.dataCriacao &&
        e1?.informacao == e2?.informacao &&
        e1?.mediaAvaliacao == e2?.mediaAvaliacao &&
        e1?.maiorDesconto == e2?.maiorDesconto &&
        e1?.oculto == e2?.oculto &&
        e1?.destaque == e2?.destaque &&
        listEquality.equals(e1?.produtores, e2?.produtores) &&
        e1?.valorReceber == e2?.valorReceber &&
        e1?.quantidadeVendida == e2?.quantidadeVendida &&
        e1?.valorTotal == e2?.valorTotal &&
        e1?.visualizacoes == e2?.visualizacoes &&
        e1?.fotoCasa == e2?.fotoCasa &&
        e1?.proximaData == e2?.proximaData &&
        e1?.proximaDataText == e2?.proximaDataText &&
        e1?.txtFtMapa == e2?.txtFtMapa &&
        e1?.criador == e2?.criador &&
        e1?.status == e2?.status &&
        e1?.slug == e2?.slug &&
        listEquality.equals(e1?.avaliacoes, e2?.avaliacoes) &&
        listEquality.equals(e1?.datasText, e2?.datasText) &&
        e1?.destaques == e2?.destaques &&
        e1?.fotoAtualiza == e2?.fotoAtualiza &&
        e1?.identificador == e2?.identificador &&
        e1?.localNome == e2?.localNome;
  }

  @override
  int hash(ShowsRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.sinopse,
        e?.foto,
        e?.tarja,
        e?.local,
        e?.faxaEtaria,
        e?.id,
        e?.datasID,
        e?.dataCriacao,
        e?.informacao,
        e?.mediaAvaliacao,
        e?.maiorDesconto,
        e?.oculto,
        e?.destaque,
        e?.produtores,
        e?.valorReceber,
        e?.quantidadeVendida,
        e?.valorTotal,
        e?.visualizacoes,
        e?.fotoCasa,
        e?.proximaData,
        e?.proximaDataText,
        e?.txtFtMapa,
        e?.criador,
        e?.status,
        e?.slug,
        e?.avaliacoes,
        e?.datasText,
        e?.destaques,
        e?.fotoAtualiza,
        e?.identificador,
        e?.localNome
      ]);

  @override
  bool isValidKey(Object? o) => o is ShowsRecord;
}
