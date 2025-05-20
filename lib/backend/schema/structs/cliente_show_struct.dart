// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteShowStruct extends FFFirebaseStruct {
  ClienteShowStruct({
    String? nome,
    String? sinopse,
    String? foto,
    String? tarja,
    String? faxaEtaria,
    String? id,
    List<String>? datasID,
    String? informacao,
    DocumentReference? docReferencia,
    DocumentReference? local,
    DateTime? dataCriacao,
    double? mediaAvaliacao,
    double? maiorDesconto,
    List<String>? produtores,
    double? valorReceber,
    int? quantidadeVendida,
    double? valorTotal,
    int? visualizacoes,
    String? fotoCasa,
    DateTime? proximaData,
    String? proximaDataText,
    String? txtFtMapa,
    DocumentReference? criador,
    String? slug,
    List<double>? avaliacoes,
    List<String>? datasText,
    String? identificador,
    bool? oculto,
    String? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nome = nome,
        _sinopse = sinopse,
        _foto = foto,
        _tarja = tarja,
        _faxaEtaria = faxaEtaria,
        _id = id,
        _datasID = datasID,
        _informacao = informacao,
        _docReferencia = docReferencia,
        _local = local,
        _dataCriacao = dataCriacao,
        _mediaAvaliacao = mediaAvaliacao,
        _maiorDesconto = maiorDesconto,
        _produtores = produtores,
        _valorReceber = valorReceber,
        _quantidadeVendida = quantidadeVendida,
        _valorTotal = valorTotal,
        _visualizacoes = visualizacoes,
        _fotoCasa = fotoCasa,
        _proximaData = proximaData,
        _proximaDataText = proximaDataText,
        _txtFtMapa = txtFtMapa,
        _criador = criador,
        _slug = slug,
        _avaliacoes = avaliacoes,
        _datasText = datasText,
        _identificador = identificador,
        _oculto = oculto,
        _status = status,
        super(firestoreUtilData);

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "sinopse" field.
  String? _sinopse;
  String get sinopse => _sinopse ?? '';
  set sinopse(String? val) => _sinopse = val;

  bool hasSinopse() => _sinopse != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  // "tarja" field.
  String? _tarja;
  String get tarja => _tarja ?? '';
  set tarja(String? val) => _tarja = val;

  bool hasTarja() => _tarja != null;

  // "faxaEtaria" field.
  String? _faxaEtaria;
  String get faxaEtaria => _faxaEtaria ?? '';
  set faxaEtaria(String? val) => _faxaEtaria = val;

  bool hasFaxaEtaria() => _faxaEtaria != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "datasID" field.
  List<String>? _datasID;
  List<String> get datasID => _datasID ?? const [];
  set datasID(List<String>? val) => _datasID = val;

  void updateDatasID(Function(List<String>) updateFn) {
    updateFn(_datasID ??= []);
  }

  bool hasDatasID() => _datasID != null;

  // "informacao" field.
  String? _informacao;
  String get informacao => _informacao ?? '';
  set informacao(String? val) => _informacao = val;

  bool hasInformacao() => _informacao != null;

  // "DocReferencia" field.
  DocumentReference? _docReferencia;
  DocumentReference? get docReferencia => _docReferencia;
  set docReferencia(DocumentReference? val) => _docReferencia = val;

  bool hasDocReferencia() => _docReferencia != null;

  // "local" field.
  DocumentReference? _local;
  DocumentReference? get local => _local;
  set local(DocumentReference? val) => _local = val;

  bool hasLocal() => _local != null;

  // "dataCriacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  set dataCriacao(DateTime? val) => _dataCriacao = val;

  bool hasDataCriacao() => _dataCriacao != null;

  // "MediaAvaliacao" field.
  double? _mediaAvaliacao;
  double get mediaAvaliacao => _mediaAvaliacao ?? 0.0;
  set mediaAvaliacao(double? val) => _mediaAvaliacao = val;

  void incrementMediaAvaliacao(double amount) =>
      mediaAvaliacao = mediaAvaliacao + amount;

  bool hasMediaAvaliacao() => _mediaAvaliacao != null;

  // "MaiorDesconto" field.
  double? _maiorDesconto;
  double get maiorDesconto => _maiorDesconto ?? 0.0;
  set maiorDesconto(double? val) => _maiorDesconto = val;

  void incrementMaiorDesconto(double amount) =>
      maiorDesconto = maiorDesconto + amount;

  bool hasMaiorDesconto() => _maiorDesconto != null;

  // "produtores" field.
  List<String>? _produtores;
  List<String> get produtores => _produtores ?? const [];
  set produtores(List<String>? val) => _produtores = val;

  void updateProdutores(Function(List<String>) updateFn) {
    updateFn(_produtores ??= []);
  }

  bool hasProdutores() => _produtores != null;

  // "valor_receber" field.
  double? _valorReceber;
  double get valorReceber => _valorReceber ?? 0.0;
  set valorReceber(double? val) => _valorReceber = val;

  void incrementValorReceber(double amount) =>
      valorReceber = valorReceber + amount;

  bool hasValorReceber() => _valorReceber != null;

  // "quantidade_vendida" field.
  int? _quantidadeVendida;
  int get quantidadeVendida => _quantidadeVendida ?? 0;
  set quantidadeVendida(int? val) => _quantidadeVendida = val;

  void incrementQuantidadeVendida(int amount) =>
      quantidadeVendida = quantidadeVendida + amount;

  bool hasQuantidadeVendida() => _quantidadeVendida != null;

  // "valor_total" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  set valorTotal(double? val) => _valorTotal = val;

  void incrementValorTotal(double amount) => valorTotal = valorTotal + amount;

  bool hasValorTotal() => _valorTotal != null;

  // "visualizacoes" field.
  int? _visualizacoes;
  int get visualizacoes => _visualizacoes ?? 0;
  set visualizacoes(int? val) => _visualizacoes = val;

  void incrementVisualizacoes(int amount) =>
      visualizacoes = visualizacoes + amount;

  bool hasVisualizacoes() => _visualizacoes != null;

  // "fotoCasa" field.
  String? _fotoCasa;
  String get fotoCasa => _fotoCasa ?? '';
  set fotoCasa(String? val) => _fotoCasa = val;

  bool hasFotoCasa() => _fotoCasa != null;

  // "proximaData" field.
  DateTime? _proximaData;
  DateTime? get proximaData => _proximaData;
  set proximaData(DateTime? val) => _proximaData = val;

  bool hasProximaData() => _proximaData != null;

  // "proximaDataText" field.
  String? _proximaDataText;
  String get proximaDataText => _proximaDataText ?? '';
  set proximaDataText(String? val) => _proximaDataText = val;

  bool hasProximaDataText() => _proximaDataText != null;

  // "txtFtMapa" field.
  String? _txtFtMapa;
  String get txtFtMapa => _txtFtMapa ?? '';
  set txtFtMapa(String? val) => _txtFtMapa = val;

  bool hasTxtFtMapa() => _txtFtMapa != null;

  // "criador" field.
  DocumentReference? _criador;
  DocumentReference? get criador => _criador;
  set criador(DocumentReference? val) => _criador = val;

  bool hasCriador() => _criador != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  set slug(String? val) => _slug = val;

  bool hasSlug() => _slug != null;

  // "avaliacoes" field.
  List<double>? _avaliacoes;
  List<double> get avaliacoes => _avaliacoes ?? const [];
  set avaliacoes(List<double>? val) => _avaliacoes = val;

  void updateAvaliacoes(Function(List<double>) updateFn) {
    updateFn(_avaliacoes ??= []);
  }

  bool hasAvaliacoes() => _avaliacoes != null;

  // "datasText" field.
  List<String>? _datasText;
  List<String> get datasText => _datasText ?? const [];
  set datasText(List<String>? val) => _datasText = val;

  void updateDatasText(Function(List<String>) updateFn) {
    updateFn(_datasText ??= []);
  }

  bool hasDatasText() => _datasText != null;

  // "Identificador" field.
  String? _identificador;
  String get identificador => _identificador ?? '';
  set identificador(String? val) => _identificador = val;

  bool hasIdentificador() => _identificador != null;

  // "oculto" field.
  bool? _oculto;
  bool get oculto => _oculto ?? false;
  set oculto(bool? val) => _oculto = val;

  bool hasOculto() => _oculto != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static ClienteShowStruct fromMap(Map<String, dynamic> data) =>
      ClienteShowStruct(
        nome: data['nome'] as String?,
        sinopse: data['sinopse'] as String?,
        foto: data['foto'] as String?,
        tarja: data['tarja'] as String?,
        faxaEtaria: data['faxaEtaria'] as String?,
        id: data['id'] as String?,
        datasID: getDataList(data['datasID']),
        informacao: data['informacao'] as String?,
        docReferencia: data['DocReferencia'] as DocumentReference?,
        local: data['local'] as DocumentReference?,
        dataCriacao: data['dataCriacao'] as DateTime?,
        mediaAvaliacao: castToType<double>(data['MediaAvaliacao']),
        maiorDesconto: castToType<double>(data['MaiorDesconto']),
        produtores: getDataList(data['produtores']),
        valorReceber: castToType<double>(data['valor_receber']),
        quantidadeVendida: castToType<int>(data['quantidade_vendida']),
        valorTotal: castToType<double>(data['valor_total']),
        visualizacoes: castToType<int>(data['visualizacoes']),
        fotoCasa: data['fotoCasa'] as String?,
        proximaData: data['proximaData'] as DateTime?,
        proximaDataText: data['proximaDataText'] as String?,
        txtFtMapa: data['txtFtMapa'] as String?,
        criador: data['criador'] as DocumentReference?,
        slug: data['slug'] as String?,
        avaliacoes: getDataList(data['avaliacoes']),
        datasText: getDataList(data['datasText']),
        identificador: data['Identificador'] as String?,
        oculto: data['oculto'] as bool?,
        status: data['status'] as String?,
      );

  static ClienteShowStruct? maybeFromMap(dynamic data) => data is Map
      ? ClienteShowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'sinopse': _sinopse,
        'foto': _foto,
        'tarja': _tarja,
        'faxaEtaria': _faxaEtaria,
        'id': _id,
        'datasID': _datasID,
        'informacao': _informacao,
        'DocReferencia': _docReferencia,
        'local': _local,
        'dataCriacao': _dataCriacao,
        'MediaAvaliacao': _mediaAvaliacao,
        'MaiorDesconto': _maiorDesconto,
        'produtores': _produtores,
        'valor_receber': _valorReceber,
        'quantidade_vendida': _quantidadeVendida,
        'valor_total': _valorTotal,
        'visualizacoes': _visualizacoes,
        'fotoCasa': _fotoCasa,
        'proximaData': _proximaData,
        'proximaDataText': _proximaDataText,
        'txtFtMapa': _txtFtMapa,
        'criador': _criador,
        'slug': _slug,
        'avaliacoes': _avaliacoes,
        'datasText': _datasText,
        'Identificador': _identificador,
        'oculto': _oculto,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'sinopse': serializeParam(
          _sinopse,
          ParamType.String,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'tarja': serializeParam(
          _tarja,
          ParamType.String,
        ),
        'faxaEtaria': serializeParam(
          _faxaEtaria,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'datasID': serializeParam(
          _datasID,
          ParamType.String,
          isList: true,
        ),
        'informacao': serializeParam(
          _informacao,
          ParamType.String,
        ),
        'DocReferencia': serializeParam(
          _docReferencia,
          ParamType.DocumentReference,
        ),
        'local': serializeParam(
          _local,
          ParamType.DocumentReference,
        ),
        'dataCriacao': serializeParam(
          _dataCriacao,
          ParamType.DateTime,
        ),
        'MediaAvaliacao': serializeParam(
          _mediaAvaliacao,
          ParamType.double,
        ),
        'MaiorDesconto': serializeParam(
          _maiorDesconto,
          ParamType.double,
        ),
        'produtores': serializeParam(
          _produtores,
          ParamType.String,
          isList: true,
        ),
        'valor_receber': serializeParam(
          _valorReceber,
          ParamType.double,
        ),
        'quantidade_vendida': serializeParam(
          _quantidadeVendida,
          ParamType.int,
        ),
        'valor_total': serializeParam(
          _valorTotal,
          ParamType.double,
        ),
        'visualizacoes': serializeParam(
          _visualizacoes,
          ParamType.int,
        ),
        'fotoCasa': serializeParam(
          _fotoCasa,
          ParamType.String,
        ),
        'proximaData': serializeParam(
          _proximaData,
          ParamType.DateTime,
        ),
        'proximaDataText': serializeParam(
          _proximaDataText,
          ParamType.String,
        ),
        'txtFtMapa': serializeParam(
          _txtFtMapa,
          ParamType.String,
        ),
        'criador': serializeParam(
          _criador,
          ParamType.DocumentReference,
        ),
        'slug': serializeParam(
          _slug,
          ParamType.String,
        ),
        'avaliacoes': serializeParam(
          _avaliacoes,
          ParamType.double,
          isList: true,
        ),
        'datasText': serializeParam(
          _datasText,
          ParamType.String,
          isList: true,
        ),
        'Identificador': serializeParam(
          _identificador,
          ParamType.String,
        ),
        'oculto': serializeParam(
          _oculto,
          ParamType.bool,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClienteShowStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClienteShowStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        sinopse: deserializeParam(
          data['sinopse'],
          ParamType.String,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
        tarja: deserializeParam(
          data['tarja'],
          ParamType.String,
          false,
        ),
        faxaEtaria: deserializeParam(
          data['faxaEtaria'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        datasID: deserializeParam<String>(
          data['datasID'],
          ParamType.String,
          true,
        ),
        informacao: deserializeParam(
          data['informacao'],
          ParamType.String,
          false,
        ),
        docReferencia: deserializeParam(
          data['DocReferencia'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['shows'],
        ),
        local: deserializeParam(
          data['local'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['local'],
        ),
        dataCriacao: deserializeParam(
          data['dataCriacao'],
          ParamType.DateTime,
          false,
        ),
        mediaAvaliacao: deserializeParam(
          data['MediaAvaliacao'],
          ParamType.double,
          false,
        ),
        maiorDesconto: deserializeParam(
          data['MaiorDesconto'],
          ParamType.double,
          false,
        ),
        produtores: deserializeParam<String>(
          data['produtores'],
          ParamType.String,
          true,
        ),
        valorReceber: deserializeParam(
          data['valor_receber'],
          ParamType.double,
          false,
        ),
        quantidadeVendida: deserializeParam(
          data['quantidade_vendida'],
          ParamType.int,
          false,
        ),
        valorTotal: deserializeParam(
          data['valor_total'],
          ParamType.double,
          false,
        ),
        visualizacoes: deserializeParam(
          data['visualizacoes'],
          ParamType.int,
          false,
        ),
        fotoCasa: deserializeParam(
          data['fotoCasa'],
          ParamType.String,
          false,
        ),
        proximaData: deserializeParam(
          data['proximaData'],
          ParamType.DateTime,
          false,
        ),
        proximaDataText: deserializeParam(
          data['proximaDataText'],
          ParamType.String,
          false,
        ),
        txtFtMapa: deserializeParam(
          data['txtFtMapa'],
          ParamType.String,
          false,
        ),
        criador: deserializeParam(
          data['criador'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        slug: deserializeParam(
          data['slug'],
          ParamType.String,
          false,
        ),
        avaliacoes: deserializeParam<double>(
          data['avaliacoes'],
          ParamType.double,
          true,
        ),
        datasText: deserializeParam<String>(
          data['datasText'],
          ParamType.String,
          true,
        ),
        identificador: deserializeParam(
          data['Identificador'],
          ParamType.String,
          false,
        ),
        oculto: deserializeParam(
          data['oculto'],
          ParamType.bool,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClienteShowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ClienteShowStruct &&
        nome == other.nome &&
        sinopse == other.sinopse &&
        foto == other.foto &&
        tarja == other.tarja &&
        faxaEtaria == other.faxaEtaria &&
        id == other.id &&
        listEquality.equals(datasID, other.datasID) &&
        informacao == other.informacao &&
        docReferencia == other.docReferencia &&
        local == other.local &&
        dataCriacao == other.dataCriacao &&
        mediaAvaliacao == other.mediaAvaliacao &&
        maiorDesconto == other.maiorDesconto &&
        listEquality.equals(produtores, other.produtores) &&
        valorReceber == other.valorReceber &&
        quantidadeVendida == other.quantidadeVendida &&
        valorTotal == other.valorTotal &&
        visualizacoes == other.visualizacoes &&
        fotoCasa == other.fotoCasa &&
        proximaData == other.proximaData &&
        proximaDataText == other.proximaDataText &&
        txtFtMapa == other.txtFtMapa &&
        criador == other.criador &&
        slug == other.slug &&
        listEquality.equals(avaliacoes, other.avaliacoes) &&
        listEquality.equals(datasText, other.datasText) &&
        identificador == other.identificador &&
        oculto == other.oculto &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nome,
        sinopse,
        foto,
        tarja,
        faxaEtaria,
        id,
        datasID,
        informacao,
        docReferencia,
        local,
        dataCriacao,
        mediaAvaliacao,
        maiorDesconto,
        produtores,
        valorReceber,
        quantidadeVendida,
        valorTotal,
        visualizacoes,
        fotoCasa,
        proximaData,
        proximaDataText,
        txtFtMapa,
        criador,
        slug,
        avaliacoes,
        datasText,
        identificador,
        oculto,
        status
      ]);
}

ClienteShowStruct createClienteShowStruct({
  String? nome,
  String? sinopse,
  String? foto,
  String? tarja,
  String? faxaEtaria,
  String? id,
  String? informacao,
  DocumentReference? docReferencia,
  DocumentReference? local,
  DateTime? dataCriacao,
  double? mediaAvaliacao,
  double? maiorDesconto,
  double? valorReceber,
  int? quantidadeVendida,
  double? valorTotal,
  int? visualizacoes,
  String? fotoCasa,
  DateTime? proximaData,
  String? proximaDataText,
  String? txtFtMapa,
  DocumentReference? criador,
  String? slug,
  String? identificador,
  bool? oculto,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClienteShowStruct(
      nome: nome,
      sinopse: sinopse,
      foto: foto,
      tarja: tarja,
      faxaEtaria: faxaEtaria,
      id: id,
      informacao: informacao,
      docReferencia: docReferencia,
      local: local,
      dataCriacao: dataCriacao,
      mediaAvaliacao: mediaAvaliacao,
      maiorDesconto: maiorDesconto,
      valorReceber: valorReceber,
      quantidadeVendida: quantidadeVendida,
      valorTotal: valorTotal,
      visualizacoes: visualizacoes,
      fotoCasa: fotoCasa,
      proximaData: proximaData,
      proximaDataText: proximaDataText,
      txtFtMapa: txtFtMapa,
      criador: criador,
      slug: slug,
      identificador: identificador,
      oculto: oculto,
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClienteShowStruct? updateClienteShowStruct(
  ClienteShowStruct? clienteShow, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    clienteShow
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClienteShowStructData(
  Map<String, dynamic> firestoreData,
  ClienteShowStruct? clienteShow,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (clienteShow == null) {
    return;
  }
  if (clienteShow.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && clienteShow.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final clienteShowData =
      getClienteShowFirestoreData(clienteShow, forFieldValue);
  final nestedData =
      clienteShowData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = clienteShow.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClienteShowFirestoreData(
  ClienteShowStruct? clienteShow, [
  bool forFieldValue = false,
]) {
  if (clienteShow == null) {
    return {};
  }
  final firestoreData = mapToFirestore(clienteShow.toMap());

  // Add any Firestore field values
  clienteShow.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClienteShowListFirestoreData(
  List<ClienteShowStruct>? clienteShows,
) =>
    clienteShows?.map((e) => getClienteShowFirestoreData(e, true)).toList() ??
    [];
