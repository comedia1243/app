// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FinanceiroStruct extends FFFirebaseStruct {
  FinanceiroStruct({
    int? quantidadeTotal,
    double? valorTotal,
    double? valorRepasse,
    double? vendasHoje,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quantidadeTotal = quantidadeTotal,
        _valorTotal = valorTotal,
        _valorRepasse = valorRepasse,
        _vendasHoje = vendasHoje,
        super(firestoreUtilData);

  // "quantidade_total" field.
  int? _quantidadeTotal;
  int get quantidadeTotal => _quantidadeTotal ?? 0;
  set quantidadeTotal(int? val) => _quantidadeTotal = val;

  void incrementQuantidadeTotal(int amount) =>
      quantidadeTotal = quantidadeTotal + amount;

  bool hasQuantidadeTotal() => _quantidadeTotal != null;

  // "valor_total" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  set valorTotal(double? val) => _valorTotal = val;

  void incrementValorTotal(double amount) => valorTotal = valorTotal + amount;

  bool hasValorTotal() => _valorTotal != null;

  // "valor_repasse" field.
  double? _valorRepasse;
  double get valorRepasse => _valorRepasse ?? 0.0;
  set valorRepasse(double? val) => _valorRepasse = val;

  void incrementValorRepasse(double amount) =>
      valorRepasse = valorRepasse + amount;

  bool hasValorRepasse() => _valorRepasse != null;

  // "vendasHoje" field.
  double? _vendasHoje;
  double get vendasHoje => _vendasHoje ?? 0.0;
  set vendasHoje(double? val) => _vendasHoje = val;

  void incrementVendasHoje(double amount) => vendasHoje = vendasHoje + amount;

  bool hasVendasHoje() => _vendasHoje != null;

  static FinanceiroStruct fromMap(Map<String, dynamic> data) =>
      FinanceiroStruct(
        quantidadeTotal: castToType<int>(data['quantidade_total']),
        valorTotal: castToType<double>(data['valor_total']),
        valorRepasse: castToType<double>(data['valor_repasse']),
        vendasHoje: castToType<double>(data['vendasHoje']),
      );

  static FinanceiroStruct? maybeFromMap(dynamic data) => data is Map
      ? FinanceiroStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'quantidade_total': _quantidadeTotal,
        'valor_total': _valorTotal,
        'valor_repasse': _valorRepasse,
        'vendasHoje': _vendasHoje,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantidade_total': serializeParam(
          _quantidadeTotal,
          ParamType.int,
        ),
        'valor_total': serializeParam(
          _valorTotal,
          ParamType.double,
        ),
        'valor_repasse': serializeParam(
          _valorRepasse,
          ParamType.double,
        ),
        'vendasHoje': serializeParam(
          _vendasHoje,
          ParamType.double,
        ),
      }.withoutNulls;

  static FinanceiroStruct fromSerializableMap(Map<String, dynamic> data) =>
      FinanceiroStruct(
        quantidadeTotal: deserializeParam(
          data['quantidade_total'],
          ParamType.int,
          false,
        ),
        valorTotal: deserializeParam(
          data['valor_total'],
          ParamType.double,
          false,
        ),
        valorRepasse: deserializeParam(
          data['valor_repasse'],
          ParamType.double,
          false,
        ),
        vendasHoje: deserializeParam(
          data['vendasHoje'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FinanceiroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FinanceiroStruct &&
        quantidadeTotal == other.quantidadeTotal &&
        valorTotal == other.valorTotal &&
        valorRepasse == other.valorRepasse &&
        vendasHoje == other.vendasHoje;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([quantidadeTotal, valorTotal, valorRepasse, vendasHoje]);
}

FinanceiroStruct createFinanceiroStruct({
  int? quantidadeTotal,
  double? valorTotal,
  double? valorRepasse,
  double? vendasHoje,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FinanceiroStruct(
      quantidadeTotal: quantidadeTotal,
      valorTotal: valorTotal,
      valorRepasse: valorRepasse,
      vendasHoje: vendasHoje,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FinanceiroStruct? updateFinanceiroStruct(
  FinanceiroStruct? financeiro, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    financeiro
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFinanceiroStructData(
  Map<String, dynamic> firestoreData,
  FinanceiroStruct? financeiro,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (financeiro == null) {
    return;
  }
  if (financeiro.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && financeiro.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final financeiroData = getFinanceiroFirestoreData(financeiro, forFieldValue);
  final nestedData = financeiroData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = financeiro.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFinanceiroFirestoreData(
  FinanceiroStruct? financeiro, [
  bool forFieldValue = false,
]) {
  if (financeiro == null) {
    return {};
  }
  final firestoreData = mapToFirestore(financeiro.toMap());

  // Add any Firestore field values
  financeiro.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFinanceiroListFirestoreData(
  List<FinanceiroStruct>? financeiros,
) =>
    financeiros?.map((e) => getFinanceiroFirestoreData(e, true)).toList() ?? [];
