import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _prevenda = prefs.getString('ff_prevenda')?.ref ?? _prevenda;
    });
    _safeInit(() {
      _TaxaPadrao = prefs.getDouble('ff_TaxaPadrao') ?? _TaxaPadrao;
    });
    _safeInit(() {
      _dataDetalhes = prefs.getString('ff_dataDetalhes')?.ref ?? _dataDetalhes;
    });
    _safeInit(() {
      _preVendaTotal = prefs.getDouble('ff_preVendaTotal') ?? _preVendaTotal;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_financeiroLocal')) {
        try {
          final serializedData = prefs.getString('ff_financeiroLocal') ?? '{}';
          _financeiroLocal =
              FinanceiroStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _listaMeses = prefs
              .getStringList('ff_listaMeses')
              ?.map((x) {
                try {
                  return MesesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _listaMeses;
    });
    _safeInit(() {
      _quantdd = prefs.getInt('ff_quantdd') ?? _quantdd;
    });
    _safeInit(() {
      _CompraIngresso = prefs.getInt('ff_CompraIngresso') ?? _CompraIngresso;
    });
    _safeInit(() {
      _CompraData = prefs.getStringList('ff_CompraData') ?? _CompraData;
    });
    _safeInit(() {
      _preVendaRecebe = prefs.getDouble('ff_preVendaRecebe') ?? _preVendaRecebe;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_showVisualiza')) {
        try {
          final serializedData = prefs.getString('ff_showVisualiza') ?? '{}';
          _showVisualiza =
              ClienteShowStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _selectIngresso = prefs
              .getStringList('ff_selectIngresso')
              ?.map((x) {
                try {
                  return SelectIngressoStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _selectIngresso;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_asaas')) {
        try {
          final serializedData = prefs.getString('ff_asaas') ?? '{}';
          _asaas = AsaasStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _faixaEtaria = prefs
              .getStringList('ff_faixaEtaria')
              ?.map((x) {
                try {
                  return FaixaEtariaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _faixaEtaria;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_dataSelectNew')) {
        try {
          final serializedData = prefs.getString('ff_dataSelectNew') ?? '{}';
          _dataSelectNew =
              DataStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _ingressosSelectNew = prefs
              .getStringList('ff_ingressosSelectNew')
              ?.map((x) {
                try {
                  return IngressoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ingressosSelectNew;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_localShow')) {
        try {
          final serializedData = prefs.getString('ff_localShow') ?? '{}';
          _localShow =
              LocalStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _stateADM = '';
  String get stateADM => _stateADM;
  set stateADM(String value) {
    _stateADM = value;
  }

  DocumentReference? _cadastrandoShow;
  DocumentReference? get cadastrandoShow => _cadastrandoShow;
  set cadastrandoShow(DocumentReference? value) {
    _cadastrandoShow = value;
  }

  List<String> _ingressospreVenda = [];
  List<String> get ingressospreVenda => _ingressospreVenda;
  set ingressospreVenda(List<String> value) {
    _ingressospreVenda = value;
  }

  void addToIngressospreVenda(String value) {
    ingressospreVenda.add(value);
  }

  void removeFromIngressospreVenda(String value) {
    ingressospreVenda.remove(value);
  }

  void removeAtIndexFromIngressospreVenda(int index) {
    ingressospreVenda.removeAt(index);
  }

  void updateIngressospreVendaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ingressospreVenda[index] = updateFn(_ingressospreVenda[index]);
  }

  void insertAtIndexInIngressospreVenda(int index, String value) {
    ingressospreVenda.insert(index, value);
  }

  DocumentReference? _prevenda;
  DocumentReference? get prevenda => _prevenda;
  set prevenda(DocumentReference? value) {
    _prevenda = value;
    value != null
        ? prefs.setString('ff_prevenda', value.path)
        : prefs.remove('ff_prevenda');
  }

  List<DocumentReference> _selectPreVenda = [];
  List<DocumentReference> get selectPreVenda => _selectPreVenda;
  set selectPreVenda(List<DocumentReference> value) {
    _selectPreVenda = value;
  }

  void addToSelectPreVenda(DocumentReference value) {
    selectPreVenda.add(value);
  }

  void removeFromSelectPreVenda(DocumentReference value) {
    selectPreVenda.remove(value);
  }

  void removeAtIndexFromSelectPreVenda(int index) {
    selectPreVenda.removeAt(index);
  }

  void updateSelectPreVendaAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    selectPreVenda[index] = updateFn(_selectPreVenda[index]);
  }

  void insertAtIndexInSelectPreVenda(int index, DocumentReference value) {
    selectPreVenda.insert(index, value);
  }

  String _cepAutomatico = '01153000';
  String get cepAutomatico => _cepAutomatico;
  set cepAutomatico(String value) {
    _cepAutomatico = value;
  }

  String _EnderecoNumAuto = '155';
  String get EnderecoNumAuto => _EnderecoNumAuto;
  set EnderecoNumAuto(String value) {
    _EnderecoNumAuto = value;
  }

  double _TaxaPadrao = 0.15;
  double get TaxaPadrao => _TaxaPadrao;
  set TaxaPadrao(double value) {
    _TaxaPadrao = value;
    prefs.setDouble('ff_TaxaPadrao', value);
  }

  DocumentReference? _dataDetalhes;
  DocumentReference? get dataDetalhes => _dataDetalhes;
  set dataDetalhes(DocumentReference? value) {
    _dataDetalhes = value;
    value != null
        ? prefs.setString('ff_dataDetalhes', value.path)
        : prefs.remove('ff_dataDetalhes');
  }

  double _preVendaTotal = 0.0;
  double get preVendaTotal => _preVendaTotal;
  set preVendaTotal(double value) {
    _preVendaTotal = value;
    prefs.setDouble('ff_preVendaTotal', value);
  }

  int _telaDetalhes = 1;
  int get telaDetalhes => _telaDetalhes;
  set telaDetalhes(int value) {
    _telaDetalhes = value;
  }

  FinanceiroStruct _financeiroLocal = FinanceiroStruct.fromSerializableMap(
      jsonDecode(
          '{\"quantidade_total\":\"123\",\"valor_total\":\"333\",\"valor_repasse\":\"23\",\"vendasHoje\":\"3\"}'));
  FinanceiroStruct get financeiroLocal => _financeiroLocal;
  set financeiroLocal(FinanceiroStruct value) {
    _financeiroLocal = value;
    prefs.setString('ff_financeiroLocal', value.serialize());
  }

  void updateFinanceiroLocalStruct(Function(FinanceiroStruct) updateFn) {
    updateFn(_financeiroLocal);
    prefs.setString('ff_financeiroLocal', _financeiroLocal.serialize());
  }

  List<MesesStruct> _listaMeses = [
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Janeiro\",\"numero\":\"1\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Fevereiro\",\"numero\":\"2\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Março\",\"numero\":\"3\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Abril\",\"numero\":\"4\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Maio\",\"numero\":\"5\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Junho\",\"numero\":\"6\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Julho\",\"numero\":\"7\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Agosto\",\"numero\":\"8\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Setembro\",\"numero\":\"9\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Outubro\",\"numero\":\"10\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Novembro\",\"numero\":\"11\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Dezembro\",\"numero\":\"12\",\"ano\":\"2024\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Janeiro\",\"numero\":\"1\",\"ano\":\"2025\"}')),
    MesesStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Fevereiro\",\"numero\":\"2\",\"ano\":\"2025\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Março\",\"numero\":\"3\",\"ano\":\"2025\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Abril\",\"numero\":\"4\",\"ano\":\"2025\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Maio\",\"numero\":\"5\",\"ano\":\"2025\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Junho\",\"numero\":\"6\",\"ano\":\"2025\"}')),
    MesesStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Julho\",\"numero\":\"7\",\"ano\":\"2025\"}'))
  ];
  List<MesesStruct> get listaMeses => _listaMeses;
  set listaMeses(List<MesesStruct> value) {
    _listaMeses = value;
    prefs.setStringList(
        'ff_listaMeses', value.map((x) => x.serialize()).toList());
  }

  void addToListaMeses(MesesStruct value) {
    listaMeses.add(value);
    prefs.setStringList(
        'ff_listaMeses', _listaMeses.map((x) => x.serialize()).toList());
  }

  void removeFromListaMeses(MesesStruct value) {
    listaMeses.remove(value);
    prefs.setStringList(
        'ff_listaMeses', _listaMeses.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromListaMeses(int index) {
    listaMeses.removeAt(index);
    prefs.setStringList(
        'ff_listaMeses', _listaMeses.map((x) => x.serialize()).toList());
  }

  void updateListaMesesAtIndex(
    int index,
    MesesStruct Function(MesesStruct) updateFn,
  ) {
    listaMeses[index] = updateFn(_listaMeses[index]);
    prefs.setStringList(
        'ff_listaMeses', _listaMeses.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInListaMeses(int index, MesesStruct value) {
    listaMeses.insert(index, value);
    prefs.setStringList(
        'ff_listaMeses', _listaMeses.map((x) => x.serialize()).toList());
  }

  int _quantdd = 0;
  int get quantdd => _quantdd;
  set quantdd(int value) {
    _quantdd = value;
    prefs.setInt('ff_quantdd', value);
  }

  int _CompraIngresso = 0;
  int get CompraIngresso => _CompraIngresso;
  set CompraIngresso(int value) {
    _CompraIngresso = value;
    prefs.setInt('ff_CompraIngresso', value);
  }

  List<String> _CompraData = [];
  List<String> get CompraData => _CompraData;
  set CompraData(List<String> value) {
    _CompraData = value;
    prefs.setStringList('ff_CompraData', value);
  }

  void addToCompraData(String value) {
    CompraData.add(value);
    prefs.setStringList('ff_CompraData', _CompraData);
  }

  void removeFromCompraData(String value) {
    CompraData.remove(value);
    prefs.setStringList('ff_CompraData', _CompraData);
  }

  void removeAtIndexFromCompraData(int index) {
    CompraData.removeAt(index);
    prefs.setStringList('ff_CompraData', _CompraData);
  }

  void updateCompraDataAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    CompraData[index] = updateFn(_CompraData[index]);
    prefs.setStringList('ff_CompraData', _CompraData);
  }

  void insertAtIndexInCompraData(int index, String value) {
    CompraData.insert(index, value);
    prefs.setStringList('ff_CompraData', _CompraData);
  }

  double _preVendaRecebe = 0.0;
  double get preVendaRecebe => _preVendaRecebe;
  set preVendaRecebe(double value) {
    _preVendaRecebe = value;
    prefs.setDouble('ff_preVendaRecebe', value);
  }

  ClienteShowStruct _showVisualiza = ClienteShowStruct();
  ClienteShowStruct get showVisualiza => _showVisualiza;
  set showVisualiza(ClienteShowStruct value) {
    _showVisualiza = value;
    prefs.setString('ff_showVisualiza', value.serialize());
  }

  void updateShowVisualizaStruct(Function(ClienteShowStruct) updateFn) {
    updateFn(_showVisualiza);
    prefs.setString('ff_showVisualiza', _showVisualiza.serialize());
  }

  List<SelectIngressoStruct> _selectIngresso = [];
  List<SelectIngressoStruct> get selectIngresso => _selectIngresso;
  set selectIngresso(List<SelectIngressoStruct> value) {
    _selectIngresso = value;
    prefs.setStringList(
        'ff_selectIngresso', value.map((x) => x.serialize()).toList());
  }

  void addToSelectIngresso(SelectIngressoStruct value) {
    selectIngresso.add(value);
    prefs.setStringList('ff_selectIngresso',
        _selectIngresso.map((x) => x.serialize()).toList());
  }

  void removeFromSelectIngresso(SelectIngressoStruct value) {
    selectIngresso.remove(value);
    prefs.setStringList('ff_selectIngresso',
        _selectIngresso.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSelectIngresso(int index) {
    selectIngresso.removeAt(index);
    prefs.setStringList('ff_selectIngresso',
        _selectIngresso.map((x) => x.serialize()).toList());
  }

  void updateSelectIngressoAtIndex(
    int index,
    SelectIngressoStruct Function(SelectIngressoStruct) updateFn,
  ) {
    selectIngresso[index] = updateFn(_selectIngresso[index]);
    prefs.setStringList('ff_selectIngresso',
        _selectIngresso.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSelectIngresso(int index, SelectIngressoStruct value) {
    selectIngresso.insert(index, value);
    prefs.setStringList('ff_selectIngresso',
        _selectIngresso.map((x) => x.serialize()).toList());
  }

  PreVendaStruct _DocPreVenda = PreVendaStruct();
  PreVendaStruct get DocPreVenda => _DocPreVenda;
  set DocPreVenda(PreVendaStruct value) {
    _DocPreVenda = value;
  }

  void updateDocPreVendaStruct(Function(PreVendaStruct) updateFn) {
    updateFn(_DocPreVenda);
  }

  AsaasStruct _asaas = AsaasStruct();
  AsaasStruct get asaas => _asaas;
  set asaas(AsaasStruct value) {
    _asaas = value;
    prefs.setString('ff_asaas', value.serialize());
  }

  void updateAsaasStruct(Function(AsaasStruct) updateFn) {
    updateFn(_asaas);
    prefs.setString('ff_asaas', _asaas.serialize());
  }

  List<FaixaEtariaStruct> _faixaEtaria = [
    FaixaEtariaStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"+18\",\"descricao\":\"Recomendado para maiores de 18 anos.\",\"icon\":\"https://firebasestorage.googleapis.com/v0/b/comedia-ingressos-9aekof.appspot.com/o/users%2FH0MdAC66srVMshH5DxMqUoBoykv2%2Fuploads%2F1726673280804000.png?alt=media&token=ca2aa054-446c-4afc-8c54-e792ae0de177\",\"uid\":\"nrnjomgfm\"}')),
    FaixaEtariaStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"+14\",\"descricao\":\"Recomendado para maiores de 14 anos.\",\"icon\":\"https://firebasestorage.googleapis.com/v0/b/comedia-ingressos-9aekof.appspot.com/o/users%2FH0MdAC66srVMshH5DxMqUoBoykv2%2Fuploads%2F1726673273034000.png?alt=media&token=c5ead8ad-0fd6-4e7c-b5ee-4c2453ae9e99\",\"uid\":\"mwrtbyvbkn\"}')),
    FaixaEtariaStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Livre\",\"descricao\":\"Livre para todas as idades\",\"icon\":\"https://firebasestorage.googleapis.com/v0/b/comedia-ingressos-9aekof.appspot.com/o/users%2F8Yd7qWThwTXtli9Kby1zLEj8CZF2%2Fuploads%2F1726587961301000.jpg?alt=media&token=0d462a40-f8dc-441b-8554-f14796d8eb3a\",\"uid\":\"qcmhfa\"}')),
    FaixaEtariaStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"+16\",\"descricao\":\"Recomendado para maiores de 16 anos.\",\"icon\":\"https://firebasestorage.googleapis.com/v0/b/comedia-ingressos-9aekof.appspot.com/o/users%2FH0MdAC66srVMshH5DxMqUoBoykv2%2Fuploads%2F1726673264989000.png?alt=media&token=bf7a857f-2ce4-401b-ba4e-697ebac1a224\",\"uid\":\"cxlpkj\"}'))
  ];
  List<FaixaEtariaStruct> get faixaEtaria => _faixaEtaria;
  set faixaEtaria(List<FaixaEtariaStruct> value) {
    _faixaEtaria = value;
    prefs.setStringList(
        'ff_faixaEtaria', value.map((x) => x.serialize()).toList());
  }

  void addToFaixaEtaria(FaixaEtariaStruct value) {
    faixaEtaria.add(value);
    prefs.setStringList(
        'ff_faixaEtaria', _faixaEtaria.map((x) => x.serialize()).toList());
  }

  void removeFromFaixaEtaria(FaixaEtariaStruct value) {
    faixaEtaria.remove(value);
    prefs.setStringList(
        'ff_faixaEtaria', _faixaEtaria.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFaixaEtaria(int index) {
    faixaEtaria.removeAt(index);
    prefs.setStringList(
        'ff_faixaEtaria', _faixaEtaria.map((x) => x.serialize()).toList());
  }

  void updateFaixaEtariaAtIndex(
    int index,
    FaixaEtariaStruct Function(FaixaEtariaStruct) updateFn,
  ) {
    faixaEtaria[index] = updateFn(_faixaEtaria[index]);
    prefs.setStringList(
        'ff_faixaEtaria', _faixaEtaria.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFaixaEtaria(int index, FaixaEtariaStruct value) {
    faixaEtaria.insert(index, value);
    prefs.setStringList(
        'ff_faixaEtaria', _faixaEtaria.map((x) => x.serialize()).toList());
  }

  DataStruct _dataSelectNew = DataStruct();
  DataStruct get dataSelectNew => _dataSelectNew;
  set dataSelectNew(DataStruct value) {
    _dataSelectNew = value;
    prefs.setString('ff_dataSelectNew', value.serialize());
  }

  void updateDataSelectNewStruct(Function(DataStruct) updateFn) {
    updateFn(_dataSelectNew);
    prefs.setString('ff_dataSelectNew', _dataSelectNew.serialize());
  }

  List<IngressoStruct> _ingressosSelectNew = [];
  List<IngressoStruct> get ingressosSelectNew => _ingressosSelectNew;
  set ingressosSelectNew(List<IngressoStruct> value) {
    _ingressosSelectNew = value;
    prefs.setStringList(
        'ff_ingressosSelectNew', value.map((x) => x.serialize()).toList());
  }

  void addToIngressosSelectNew(IngressoStruct value) {
    ingressosSelectNew.add(value);
    prefs.setStringList('ff_ingressosSelectNew',
        _ingressosSelectNew.map((x) => x.serialize()).toList());
  }

  void removeFromIngressosSelectNew(IngressoStruct value) {
    ingressosSelectNew.remove(value);
    prefs.setStringList('ff_ingressosSelectNew',
        _ingressosSelectNew.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromIngressosSelectNew(int index) {
    ingressosSelectNew.removeAt(index);
    prefs.setStringList('ff_ingressosSelectNew',
        _ingressosSelectNew.map((x) => x.serialize()).toList());
  }

  void updateIngressosSelectNewAtIndex(
    int index,
    IngressoStruct Function(IngressoStruct) updateFn,
  ) {
    ingressosSelectNew[index] = updateFn(_ingressosSelectNew[index]);
    prefs.setStringList('ff_ingressosSelectNew',
        _ingressosSelectNew.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInIngressosSelectNew(int index, IngressoStruct value) {
    ingressosSelectNew.insert(index, value);
    prefs.setStringList('ff_ingressosSelectNew',
        _ingressosSelectNew.map((x) => x.serialize()).toList());
  }

  LocalStruct _localShow = LocalStruct();
  LocalStruct get localShow => _localShow;
  set localShow(LocalStruct value) {
    _localShow = value;
    prefs.setString('ff_localShow', value.serialize());
  }

  void updateLocalShowStruct(Function(LocalStruct) updateFn) {
    updateFn(_localShow);
    prefs.setString('ff_localShow', _localShow.serialize());
  }

  int _localState = 0;
  int get localState => _localState;
  set localState(int value) {
    _localState = value;
  }

  final _listaShowsManager = FutureRequestManager<List<ShowsDestaqueRecord>>();
  Future<List<ShowsDestaqueRecord>> listaShows({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ShowsDestaqueRecord>> Function() requestFn,
  }) =>
      _listaShowsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearListaShowsCache() => _listaShowsManager.clear();
  void clearListaShowsCacheKey(String? uniqueKey) =>
      _listaShowsManager.clearRequest(uniqueKey);

  final _bannersPrincipalManager = FutureRequestManager<List<BannersRecord>>();
  Future<List<BannersRecord>> bannersPrincipal({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<BannersRecord>> Function() requestFn,
  }) =>
      _bannersPrincipalManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBannersPrincipalCache() => _bannersPrincipalManager.clear();
  void clearBannersPrincipalCacheKey(String? uniqueKey) =>
      _bannersPrincipalManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
