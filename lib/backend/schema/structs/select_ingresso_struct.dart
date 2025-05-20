// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SelectIngressoStruct extends FFFirebaseStruct {
  SelectIngressoStruct({
    int? quantdd,
    DocumentReference? ingresso,
    int? ordem,
    double? subTotal,
    String? clienteNome,
    String? clienteEmail,
    String? clienteCpf,
    String? clienteCelular,
    bool? checkForm,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quantdd = quantdd,
        _ingresso = ingresso,
        _ordem = ordem,
        _subTotal = subTotal,
        _clienteNome = clienteNome,
        _clienteEmail = clienteEmail,
        _clienteCpf = clienteCpf,
        _clienteCelular = clienteCelular,
        _checkForm = checkForm,
        super(firestoreUtilData);

  // "quantdd" field.
  int? _quantdd;
  int get quantdd => _quantdd ?? 0;
  set quantdd(int? val) => _quantdd = val;

  void incrementQuantdd(int amount) => quantdd = quantdd + amount;

  bool hasQuantdd() => _quantdd != null;

  // "ingresso" field.
  DocumentReference? _ingresso;
  DocumentReference? get ingresso => _ingresso;
  set ingresso(DocumentReference? val) => _ingresso = val;

  bool hasIngresso() => _ingresso != null;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  set ordem(int? val) => _ordem = val;

  void incrementOrdem(int amount) => ordem = ordem + amount;

  bool hasOrdem() => _ordem != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  set subTotal(double? val) => _subTotal = val;

  void incrementSubTotal(double amount) => subTotal = subTotal + amount;

  bool hasSubTotal() => _subTotal != null;

  // "cliente_nome" field.
  String? _clienteNome;
  String get clienteNome => _clienteNome ?? '';
  set clienteNome(String? val) => _clienteNome = val;

  bool hasClienteNome() => _clienteNome != null;

  // "cliente_email" field.
  String? _clienteEmail;
  String get clienteEmail => _clienteEmail ?? '';
  set clienteEmail(String? val) => _clienteEmail = val;

  bool hasClienteEmail() => _clienteEmail != null;

  // "cliente_cpf" field.
  String? _clienteCpf;
  String get clienteCpf => _clienteCpf ?? '';
  set clienteCpf(String? val) => _clienteCpf = val;

  bool hasClienteCpf() => _clienteCpf != null;

  // "cliente_celular" field.
  String? _clienteCelular;
  String get clienteCelular => _clienteCelular ?? '';
  set clienteCelular(String? val) => _clienteCelular = val;

  bool hasClienteCelular() => _clienteCelular != null;

  // "check_form" field.
  bool? _checkForm;
  bool get checkForm => _checkForm ?? false;
  set checkForm(bool? val) => _checkForm = val;

  bool hasCheckForm() => _checkForm != null;

  static SelectIngressoStruct fromMap(Map<String, dynamic> data) =>
      SelectIngressoStruct(
        quantdd: castToType<int>(data['quantdd']),
        ingresso: data['ingresso'] as DocumentReference?,
        ordem: castToType<int>(data['ordem']),
        subTotal: castToType<double>(data['subTotal']),
        clienteNome: data['cliente_nome'] as String?,
        clienteEmail: data['cliente_email'] as String?,
        clienteCpf: data['cliente_cpf'] as String?,
        clienteCelular: data['cliente_celular'] as String?,
        checkForm: data['check_form'] as bool?,
      );

  static SelectIngressoStruct? maybeFromMap(dynamic data) => data is Map
      ? SelectIngressoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'quantdd': _quantdd,
        'ingresso': _ingresso,
        'ordem': _ordem,
        'subTotal': _subTotal,
        'cliente_nome': _clienteNome,
        'cliente_email': _clienteEmail,
        'cliente_cpf': _clienteCpf,
        'cliente_celular': _clienteCelular,
        'check_form': _checkForm,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantdd': serializeParam(
          _quantdd,
          ParamType.int,
        ),
        'ingresso': serializeParam(
          _ingresso,
          ParamType.DocumentReference,
        ),
        'ordem': serializeParam(
          _ordem,
          ParamType.int,
        ),
        'subTotal': serializeParam(
          _subTotal,
          ParamType.double,
        ),
        'cliente_nome': serializeParam(
          _clienteNome,
          ParamType.String,
        ),
        'cliente_email': serializeParam(
          _clienteEmail,
          ParamType.String,
        ),
        'cliente_cpf': serializeParam(
          _clienteCpf,
          ParamType.String,
        ),
        'cliente_celular': serializeParam(
          _clienteCelular,
          ParamType.String,
        ),
        'check_form': serializeParam(
          _checkForm,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SelectIngressoStruct fromSerializableMap(Map<String, dynamic> data) =>
      SelectIngressoStruct(
        quantdd: deserializeParam(
          data['quantdd'],
          ParamType.int,
          false,
        ),
        ingresso: deserializeParam(
          data['ingresso'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ingresso'],
        ),
        ordem: deserializeParam(
          data['ordem'],
          ParamType.int,
          false,
        ),
        subTotal: deserializeParam(
          data['subTotal'],
          ParamType.double,
          false,
        ),
        clienteNome: deserializeParam(
          data['cliente_nome'],
          ParamType.String,
          false,
        ),
        clienteEmail: deserializeParam(
          data['cliente_email'],
          ParamType.String,
          false,
        ),
        clienteCpf: deserializeParam(
          data['cliente_cpf'],
          ParamType.String,
          false,
        ),
        clienteCelular: deserializeParam(
          data['cliente_celular'],
          ParamType.String,
          false,
        ),
        checkForm: deserializeParam(
          data['check_form'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SelectIngressoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectIngressoStruct &&
        quantdd == other.quantdd &&
        ingresso == other.ingresso &&
        ordem == other.ordem &&
        subTotal == other.subTotal &&
        clienteNome == other.clienteNome &&
        clienteEmail == other.clienteEmail &&
        clienteCpf == other.clienteCpf &&
        clienteCelular == other.clienteCelular &&
        checkForm == other.checkForm;
  }

  @override
  int get hashCode => const ListEquality().hash([
        quantdd,
        ingresso,
        ordem,
        subTotal,
        clienteNome,
        clienteEmail,
        clienteCpf,
        clienteCelular,
        checkForm
      ]);
}

SelectIngressoStruct createSelectIngressoStruct({
  int? quantdd,
  DocumentReference? ingresso,
  int? ordem,
  double? subTotal,
  String? clienteNome,
  String? clienteEmail,
  String? clienteCpf,
  String? clienteCelular,
  bool? checkForm,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SelectIngressoStruct(
      quantdd: quantdd,
      ingresso: ingresso,
      ordem: ordem,
      subTotal: subTotal,
      clienteNome: clienteNome,
      clienteEmail: clienteEmail,
      clienteCpf: clienteCpf,
      clienteCelular: clienteCelular,
      checkForm: checkForm,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SelectIngressoStruct? updateSelectIngressoStruct(
  SelectIngressoStruct? selectIngresso, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    selectIngresso
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSelectIngressoStructData(
  Map<String, dynamic> firestoreData,
  SelectIngressoStruct? selectIngresso,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (selectIngresso == null) {
    return;
  }
  if (selectIngresso.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && selectIngresso.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final selectIngressoData =
      getSelectIngressoFirestoreData(selectIngresso, forFieldValue);
  final nestedData =
      selectIngressoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = selectIngresso.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSelectIngressoFirestoreData(
  SelectIngressoStruct? selectIngresso, [
  bool forFieldValue = false,
]) {
  if (selectIngresso == null) {
    return {};
  }
  final firestoreData = mapToFirestore(selectIngresso.toMap());

  // Add any Firestore field values
  selectIngresso.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSelectIngressoListFirestoreData(
  List<SelectIngressoStruct>? selectIngressos,
) =>
    selectIngressos
        ?.map((e) => getSelectIngressoFirestoreData(e, true))
        .toList() ??
    [];
