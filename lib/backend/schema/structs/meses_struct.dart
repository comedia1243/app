// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MesesStruct extends FFFirebaseStruct {
  MesesStruct({
    String? nome,
    int? numero,
    int? ano,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nome = nome,
        _numero = numero,
        _ano = ano,
        super(firestoreUtilData);

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  set numero(int? val) => _numero = val;

  void incrementNumero(int amount) => numero = numero + amount;

  bool hasNumero() => _numero != null;

  // "ano" field.
  int? _ano;
  int get ano => _ano ?? 0;
  set ano(int? val) => _ano = val;

  void incrementAno(int amount) => ano = ano + amount;

  bool hasAno() => _ano != null;

  static MesesStruct fromMap(Map<String, dynamic> data) => MesesStruct(
        nome: data['nome'] as String?,
        numero: castToType<int>(data['numero']),
        ano: castToType<int>(data['ano']),
      );

  static MesesStruct? maybeFromMap(dynamic data) =>
      data is Map ? MesesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'numero': _numero,
        'ano': _ano,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.int,
        ),
        'ano': serializeParam(
          _ano,
          ParamType.int,
        ),
      }.withoutNulls;

  static MesesStruct fromSerializableMap(Map<String, dynamic> data) =>
      MesesStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.int,
          false,
        ),
        ano: deserializeParam(
          data['ano'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MesesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MesesStruct &&
        nome == other.nome &&
        numero == other.numero &&
        ano == other.ano;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, numero, ano]);
}

MesesStruct createMesesStruct({
  String? nome,
  int? numero,
  int? ano,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MesesStruct(
      nome: nome,
      numero: numero,
      ano: ano,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MesesStruct? updateMesesStruct(
  MesesStruct? meses, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    meses
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMesesStructData(
  Map<String, dynamic> firestoreData,
  MesesStruct? meses,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (meses == null) {
    return;
  }
  if (meses.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && meses.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mesesData = getMesesFirestoreData(meses, forFieldValue);
  final nestedData = mesesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = meses.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMesesFirestoreData(
  MesesStruct? meses, [
  bool forFieldValue = false,
]) {
  if (meses == null) {
    return {};
  }
  final firestoreData = mapToFirestore(meses.toMap());

  // Add any Firestore field values
  meses.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMesesListFirestoreData(
  List<MesesStruct>? mesess,
) =>
    mesess?.map((e) => getMesesFirestoreData(e, true)).toList() ?? [];
