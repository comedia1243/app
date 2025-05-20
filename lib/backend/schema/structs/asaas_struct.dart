// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AsaasStruct extends FFFirebaseStruct {
  AsaasStruct({
    double? saldoEmConta,
    double? valorRecebido,
    double? valorRecebidoLiquido,
    double? valorConfirmado,
    double? valorConfirmadoLiquido,
    int? quantddVendida,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _saldoEmConta = saldoEmConta,
        _valorRecebido = valorRecebido,
        _valorRecebidoLiquido = valorRecebidoLiquido,
        _valorConfirmado = valorConfirmado,
        _valorConfirmadoLiquido = valorConfirmadoLiquido,
        _quantddVendida = quantddVendida,
        super(firestoreUtilData);

  // "saldoEmConta" field.
  double? _saldoEmConta;
  double get saldoEmConta => _saldoEmConta ?? 0.0;
  set saldoEmConta(double? val) => _saldoEmConta = val;

  void incrementSaldoEmConta(double amount) =>
      saldoEmConta = saldoEmConta + amount;

  bool hasSaldoEmConta() => _saldoEmConta != null;

  // "valorRecebido" field.
  double? _valorRecebido;
  double get valorRecebido => _valorRecebido ?? 0.0;
  set valorRecebido(double? val) => _valorRecebido = val;

  void incrementValorRecebido(double amount) =>
      valorRecebido = valorRecebido + amount;

  bool hasValorRecebido() => _valorRecebido != null;

  // "valorRecebidoLiquido" field.
  double? _valorRecebidoLiquido;
  double get valorRecebidoLiquido => _valorRecebidoLiquido ?? 0.0;
  set valorRecebidoLiquido(double? val) => _valorRecebidoLiquido = val;

  void incrementValorRecebidoLiquido(double amount) =>
      valorRecebidoLiquido = valorRecebidoLiquido + amount;

  bool hasValorRecebidoLiquido() => _valorRecebidoLiquido != null;

  // "valorConfirmado" field.
  double? _valorConfirmado;
  double get valorConfirmado => _valorConfirmado ?? 0.0;
  set valorConfirmado(double? val) => _valorConfirmado = val;

  void incrementValorConfirmado(double amount) =>
      valorConfirmado = valorConfirmado + amount;

  bool hasValorConfirmado() => _valorConfirmado != null;

  // "valorConfirmadoLiquido" field.
  double? _valorConfirmadoLiquido;
  double get valorConfirmadoLiquido => _valorConfirmadoLiquido ?? 0.0;
  set valorConfirmadoLiquido(double? val) => _valorConfirmadoLiquido = val;

  void incrementValorConfirmadoLiquido(double amount) =>
      valorConfirmadoLiquido = valorConfirmadoLiquido + amount;

  bool hasValorConfirmadoLiquido() => _valorConfirmadoLiquido != null;

  // "quantddVendida" field.
  int? _quantddVendida;
  int get quantddVendida => _quantddVendida ?? 0;
  set quantddVendida(int? val) => _quantddVendida = val;

  void incrementQuantddVendida(int amount) =>
      quantddVendida = quantddVendida + amount;

  bool hasQuantddVendida() => _quantddVendida != null;

  static AsaasStruct fromMap(Map<String, dynamic> data) => AsaasStruct(
        saldoEmConta: castToType<double>(data['saldoEmConta']),
        valorRecebido: castToType<double>(data['valorRecebido']),
        valorRecebidoLiquido: castToType<double>(data['valorRecebidoLiquido']),
        valorConfirmado: castToType<double>(data['valorConfirmado']),
        valorConfirmadoLiquido:
            castToType<double>(data['valorConfirmadoLiquido']),
        quantddVendida: castToType<int>(data['quantddVendida']),
      );

  static AsaasStruct? maybeFromMap(dynamic data) =>
      data is Map ? AsaasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'saldoEmConta': _saldoEmConta,
        'valorRecebido': _valorRecebido,
        'valorRecebidoLiquido': _valorRecebidoLiquido,
        'valorConfirmado': _valorConfirmado,
        'valorConfirmadoLiquido': _valorConfirmadoLiquido,
        'quantddVendida': _quantddVendida,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'saldoEmConta': serializeParam(
          _saldoEmConta,
          ParamType.double,
        ),
        'valorRecebido': serializeParam(
          _valorRecebido,
          ParamType.double,
        ),
        'valorRecebidoLiquido': serializeParam(
          _valorRecebidoLiquido,
          ParamType.double,
        ),
        'valorConfirmado': serializeParam(
          _valorConfirmado,
          ParamType.double,
        ),
        'valorConfirmadoLiquido': serializeParam(
          _valorConfirmadoLiquido,
          ParamType.double,
        ),
        'quantddVendida': serializeParam(
          _quantddVendida,
          ParamType.int,
        ),
      }.withoutNulls;

  static AsaasStruct fromSerializableMap(Map<String, dynamic> data) =>
      AsaasStruct(
        saldoEmConta: deserializeParam(
          data['saldoEmConta'],
          ParamType.double,
          false,
        ),
        valorRecebido: deserializeParam(
          data['valorRecebido'],
          ParamType.double,
          false,
        ),
        valorRecebidoLiquido: deserializeParam(
          data['valorRecebidoLiquido'],
          ParamType.double,
          false,
        ),
        valorConfirmado: deserializeParam(
          data['valorConfirmado'],
          ParamType.double,
          false,
        ),
        valorConfirmadoLiquido: deserializeParam(
          data['valorConfirmadoLiquido'],
          ParamType.double,
          false,
        ),
        quantddVendida: deserializeParam(
          data['quantddVendida'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AsaasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AsaasStruct &&
        saldoEmConta == other.saldoEmConta &&
        valorRecebido == other.valorRecebido &&
        valorRecebidoLiquido == other.valorRecebidoLiquido &&
        valorConfirmado == other.valorConfirmado &&
        valorConfirmadoLiquido == other.valorConfirmadoLiquido &&
        quantddVendida == other.quantddVendida;
  }

  @override
  int get hashCode => const ListEquality().hash([
        saldoEmConta,
        valorRecebido,
        valorRecebidoLiquido,
        valorConfirmado,
        valorConfirmadoLiquido,
        quantddVendida
      ]);
}

AsaasStruct createAsaasStruct({
  double? saldoEmConta,
  double? valorRecebido,
  double? valorRecebidoLiquido,
  double? valorConfirmado,
  double? valorConfirmadoLiquido,
  int? quantddVendida,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AsaasStruct(
      saldoEmConta: saldoEmConta,
      valorRecebido: valorRecebido,
      valorRecebidoLiquido: valorRecebidoLiquido,
      valorConfirmado: valorConfirmado,
      valorConfirmadoLiquido: valorConfirmadoLiquido,
      quantddVendida: quantddVendida,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AsaasStruct? updateAsaasStruct(
  AsaasStruct? asaas, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    asaas
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAsaasStructData(
  Map<String, dynamic> firestoreData,
  AsaasStruct? asaas,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (asaas == null) {
    return;
  }
  if (asaas.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && asaas.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final asaasData = getAsaasFirestoreData(asaas, forFieldValue);
  final nestedData = asaasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = asaas.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAsaasFirestoreData(
  AsaasStruct? asaas, [
  bool forFieldValue = false,
]) {
  if (asaas == null) {
    return {};
  }
  final firestoreData = mapToFirestore(asaas.toMap());

  // Add any Firestore field values
  asaas.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAsaasListFirestoreData(
  List<AsaasStruct>? asaass,
) =>
    asaass?.map((e) => getAsaasFirestoreData(e, true)).toList() ?? [];
