import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VendaRecord extends FirestoreRecord {
  VendaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "show" field.
  DocumentReference? _show;
  DocumentReference? get show => _show;
  bool hasShow() => _show != null;

  // "cliente_nome" field.
  String? _clienteNome;
  String get clienteNome => _clienteNome ?? '';
  bool hasClienteNome() => _clienteNome != null;

  // "cliente_celular" field.
  String? _clienteCelular;
  String get clienteCelular => _clienteCelular ?? '';
  bool hasClienteCelular() => _clienteCelular != null;

  // "cliente_cpf" field.
  String? _clienteCpf;
  String get clienteCpf => _clienteCpf ?? '';
  bool hasClienteCpf() => _clienteCpf != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "idreferencia" field.
  String? _idreferencia;
  String get idreferencia => _idreferencia ?? '';
  bool hasIdreferencia() => _idreferencia != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "customer_id" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  bool hasCustomerId() => _customerId != null;

  // "valorTotal" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  bool hasValorTotal() => _valorTotal != null;

  // "ValorReceber" field.
  double? _valorReceber;
  double get valorReceber => _valorReceber ?? 0.0;
  bool hasValorReceber() => _valorReceber != null;

  // "id_pagamento" field.
  String? _idPagamento;
  String get idPagamento => _idPagamento ?? '';
  bool hasIdPagamento() => _idPagamento != null;

  // "preVenda" field.
  DocumentReference? _preVenda;
  DocumentReference? get preVenda => _preVenda;
  bool hasPreVenda() => _preVenda != null;

  // "data_show" field.
  DocumentReference? _dataShow;
  DocumentReference? get dataShow => _dataShow;
  bool hasDataShow() => _dataShow != null;

  // "tipoPagamento" field.
  String? _tipoPagamento;
  String get tipoPagamento => _tipoPagamento ?? '';
  bool hasTipoPagamento() => _tipoPagamento != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "id_show" field.
  String? _idShow;
  String get idShow => _idShow ?? '';
  bool hasIdShow() => _idShow != null;

  // "qrcode" field.
  String? _qrcode;
  String get qrcode => _qrcode ?? '';
  bool hasQrcode() => _qrcode != null;

  // "copiacola" field.
  String? _copiacola;
  String get copiacola => _copiacola ?? '';
  bool hasCopiacola() => _copiacola != null;

  // "cupomDesconto" field.
  DocumentReference? _cupomDesconto;
  DocumentReference? get cupomDesconto => _cupomDesconto;
  bool hasCupomDesconto() => _cupomDesconto != null;

  // "checkIn" field.
  bool? _checkIn;
  bool get checkIn => _checkIn ?? false;
  bool hasCheckIn() => _checkIn != null;

  // "dataCriacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  // "produtores" field.
  List<String>? _produtores;
  List<String> get produtores => _produtores ?? const [];
  bool hasProdutores() => _produtores != null;

  // "valorPlataforma" field.
  double? _valorPlataforma;
  double get valorPlataforma => _valorPlataforma ?? 0.0;
  bool hasValorPlataforma() => _valorPlataforma != null;

  // "pdfUrl" field.
  String? _pdfUrl;
  String get pdfUrl => _pdfUrl ?? '';
  bool hasPdfUrl() => _pdfUrl != null;

  // "dataText" field.
  String? _dataText;
  String get dataText => _dataText ?? '';
  bool hasDataText() => _dataText != null;

  // "horaText" field.
  String? _horaText;
  String get horaText => _horaText ?? '';
  bool hasHoraText() => _horaText != null;

  // "localEndereco" field.
  String? _localEndereco;
  String get localEndereco => _localEndereco ?? '';
  bool hasLocalEndereco() => _localEndereco != null;

  // "clienteEmail" field.
  String? _clienteEmail;
  String get clienteEmail => _clienteEmail ?? '';
  bool hasClienteEmail() => _clienteEmail != null;

  // "showid" field.
  String? _showid;
  String get showid => _showid ?? '';
  bool hasShowid() => _showid != null;

  // "ingressos_venda" field.
  List<DocumentReference>? _ingressosVenda;
  List<DocumentReference> get ingressosVenda => _ingressosVenda ?? const [];
  bool hasIngressosVenda() => _ingressosVenda != null;

  // "parcelamento" field.
  DocumentReference? _parcelamento;
  DocumentReference? get parcelamento => _parcelamento;
  bool hasParcelamento() => _parcelamento != null;

  // "dataEvento" field.
  DateTime? _dataEvento;
  DateTime? get dataEvento => _dataEvento;
  bool hasDataEvento() => _dataEvento != null;

  // "quantdd" field.
  int? _quantdd;
  int get quantdd => _quantdd ?? 0;
  bool hasQuantdd() => _quantdd != null;

  // "idData" field.
  String? _idData;
  String get idData => _idData ?? '';
  bool hasIdData() => _idData != null;

  // "dataRef" field.
  String? _dataRef;
  String get dataRef => _dataRef ?? '';
  bool hasDataRef() => _dataRef != null;

  void _initializeFields() {
    _show = snapshotData['show'] as DocumentReference?;
    _clienteNome = snapshotData['cliente_nome'] as String?;
    _clienteCelular = snapshotData['cliente_celular'] as String?;
    _clienteCpf = snapshotData['cliente_cpf'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _idreferencia = snapshotData['idreferencia'] as String?;
    _status = snapshotData['status'] as String?;
    _customerId = snapshotData['customer_id'] as String?;
    _valorTotal = castToType<double>(snapshotData['valorTotal']);
    _valorReceber = castToType<double>(snapshotData['ValorReceber']);
    _idPagamento = snapshotData['id_pagamento'] as String?;
    _preVenda = snapshotData['preVenda'] as DocumentReference?;
    _dataShow = snapshotData['data_show'] as DocumentReference?;
    _tipoPagamento = snapshotData['tipoPagamento'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _idShow = snapshotData['id_show'] as String?;
    _qrcode = snapshotData['qrcode'] as String?;
    _copiacola = snapshotData['copiacola'] as String?;
    _cupomDesconto = snapshotData['cupomDesconto'] as DocumentReference?;
    _checkIn = snapshotData['checkIn'] as bool?;
    _dataCriacao = snapshotData['dataCriacao'] as DateTime?;
    _produtores = getDataList(snapshotData['produtores']);
    _valorPlataforma = castToType<double>(snapshotData['valorPlataforma']);
    _pdfUrl = snapshotData['pdfUrl'] as String?;
    _dataText = snapshotData['dataText'] as String?;
    _horaText = snapshotData['horaText'] as String?;
    _localEndereco = snapshotData['localEndereco'] as String?;
    _clienteEmail = snapshotData['clienteEmail'] as String?;
    _showid = snapshotData['showid'] as String?;
    _ingressosVenda = getDataList(snapshotData['ingressos_venda']);
    _parcelamento = snapshotData['parcelamento'] as DocumentReference?;
    _dataEvento = snapshotData['dataEvento'] as DateTime?;
    _quantdd = castToType<int>(snapshotData['quantdd']);
    _idData = snapshotData['idData'] as String?;
    _dataRef = snapshotData['dataRef'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('venda');

  static Stream<VendaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VendaRecord.fromSnapshot(s));

  static Future<VendaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VendaRecord.fromSnapshot(s));

  static VendaRecord fromSnapshot(DocumentSnapshot snapshot) => VendaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VendaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VendaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VendaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VendaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVendaRecordData({
  DocumentReference? show,
  String? clienteNome,
  String? clienteCelular,
  String? clienteCpf,
  DateTime? data,
  String? idreferencia,
  String? status,
  String? customerId,
  double? valorTotal,
  double? valorReceber,
  String? idPagamento,
  DocumentReference? preVenda,
  DocumentReference? dataShow,
  String? tipoPagamento,
  String? endereco,
  String? idShow,
  String? qrcode,
  String? copiacola,
  DocumentReference? cupomDesconto,
  bool? checkIn,
  DateTime? dataCriacao,
  double? valorPlataforma,
  String? pdfUrl,
  String? dataText,
  String? horaText,
  String? localEndereco,
  String? clienteEmail,
  String? showid,
  DocumentReference? parcelamento,
  DateTime? dataEvento,
  int? quantdd,
  String? idData,
  String? dataRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'show': show,
      'cliente_nome': clienteNome,
      'cliente_celular': clienteCelular,
      'cliente_cpf': clienteCpf,
      'data': data,
      'idreferencia': idreferencia,
      'status': status,
      'customer_id': customerId,
      'valorTotal': valorTotal,
      'ValorReceber': valorReceber,
      'id_pagamento': idPagamento,
      'preVenda': preVenda,
      'data_show': dataShow,
      'tipoPagamento': tipoPagamento,
      'endereco': endereco,
      'id_show': idShow,
      'qrcode': qrcode,
      'copiacola': copiacola,
      'cupomDesconto': cupomDesconto,
      'checkIn': checkIn,
      'dataCriacao': dataCriacao,
      'valorPlataforma': valorPlataforma,
      'pdfUrl': pdfUrl,
      'dataText': dataText,
      'horaText': horaText,
      'localEndereco': localEndereco,
      'clienteEmail': clienteEmail,
      'showid': showid,
      'parcelamento': parcelamento,
      'dataEvento': dataEvento,
      'quantdd': quantdd,
      'idData': idData,
      'dataRef': dataRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class VendaRecordDocumentEquality implements Equality<VendaRecord> {
  const VendaRecordDocumentEquality();

  @override
  bool equals(VendaRecord? e1, VendaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.show == e2?.show &&
        e1?.clienteNome == e2?.clienteNome &&
        e1?.clienteCelular == e2?.clienteCelular &&
        e1?.clienteCpf == e2?.clienteCpf &&
        e1?.data == e2?.data &&
        e1?.idreferencia == e2?.idreferencia &&
        e1?.status == e2?.status &&
        e1?.customerId == e2?.customerId &&
        e1?.valorTotal == e2?.valorTotal &&
        e1?.valorReceber == e2?.valorReceber &&
        e1?.idPagamento == e2?.idPagamento &&
        e1?.preVenda == e2?.preVenda &&
        e1?.dataShow == e2?.dataShow &&
        e1?.tipoPagamento == e2?.tipoPagamento &&
        e1?.endereco == e2?.endereco &&
        e1?.idShow == e2?.idShow &&
        e1?.qrcode == e2?.qrcode &&
        e1?.copiacola == e2?.copiacola &&
        e1?.cupomDesconto == e2?.cupomDesconto &&
        e1?.checkIn == e2?.checkIn &&
        e1?.dataCriacao == e2?.dataCriacao &&
        listEquality.equals(e1?.produtores, e2?.produtores) &&
        e1?.valorPlataforma == e2?.valorPlataforma &&
        e1?.pdfUrl == e2?.pdfUrl &&
        e1?.dataText == e2?.dataText &&
        e1?.horaText == e2?.horaText &&
        e1?.localEndereco == e2?.localEndereco &&
        e1?.clienteEmail == e2?.clienteEmail &&
        e1?.showid == e2?.showid &&
        listEquality.equals(e1?.ingressosVenda, e2?.ingressosVenda) &&
        e1?.parcelamento == e2?.parcelamento &&
        e1?.dataEvento == e2?.dataEvento &&
        e1?.quantdd == e2?.quantdd &&
        e1?.idData == e2?.idData &&
        e1?.dataRef == e2?.dataRef;
  }

  @override
  int hash(VendaRecord? e) => const ListEquality().hash([
        e?.show,
        e?.clienteNome,
        e?.clienteCelular,
        e?.clienteCpf,
        e?.data,
        e?.idreferencia,
        e?.status,
        e?.customerId,
        e?.valorTotal,
        e?.valorReceber,
        e?.idPagamento,
        e?.preVenda,
        e?.dataShow,
        e?.tipoPagamento,
        e?.endereco,
        e?.idShow,
        e?.qrcode,
        e?.copiacola,
        e?.cupomDesconto,
        e?.checkIn,
        e?.dataCriacao,
        e?.produtores,
        e?.valorPlataforma,
        e?.pdfUrl,
        e?.dataText,
        e?.horaText,
        e?.localEndereco,
        e?.clienteEmail,
        e?.showid,
        e?.ingressosVenda,
        e?.parcelamento,
        e?.dataEvento,
        e?.quantdd,
        e?.idData,
        e?.dataRef
      ]);

  @override
  bool isValidKey(Object? o) => o is VendaRecord;
}
