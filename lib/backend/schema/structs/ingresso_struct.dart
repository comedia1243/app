// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class IngressoStruct extends FFFirebaseStruct {
  IngressoStruct({
    DocumentReference? referencia,
    String? nome,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _referencia = referencia,
        _nome = nome,
        super(firestoreUtilData);

  // "referencia" field.
  DocumentReference? _referencia;
  DocumentReference? get referencia => _referencia;
  set referencia(DocumentReference? val) => _referencia = val;

  bool hasReferencia() => _referencia != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  static IngressoStruct fromMap(Map<String, dynamic> data) => IngressoStruct(
        referencia: data['referencia'] as DocumentReference?,
        nome: data['nome'] as String?,
      );

  static IngressoStruct? maybeFromMap(dynamic data) =>
      data is Map ? IngressoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'referencia': _referencia,
        'nome': _nome,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referencia': serializeParam(
          _referencia,
          ParamType.DocumentReference,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
      }.withoutNulls;

  static IngressoStruct fromSerializableMap(Map<String, dynamic> data) =>
      IngressoStruct(
        referencia: deserializeParam(
          data['referencia'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ingresso'],
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IngressoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IngressoStruct &&
        referencia == other.referencia &&
        nome == other.nome;
  }

  @override
  int get hashCode => const ListEquality().hash([referencia, nome]);
}

IngressoStruct createIngressoStruct({
  DocumentReference? referencia,
  String? nome,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IngressoStruct(
      referencia: referencia,
      nome: nome,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IngressoStruct? updateIngressoStruct(
  IngressoStruct? ingresso, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ingresso
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIngressoStructData(
  Map<String, dynamic> firestoreData,
  IngressoStruct? ingresso,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ingresso == null) {
    return;
  }
  if (ingresso.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ingresso.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ingressoData = getIngressoFirestoreData(ingresso, forFieldValue);
  final nestedData = ingressoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ingresso.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIngressoFirestoreData(
  IngressoStruct? ingresso, [
  bool forFieldValue = false,
]) {
  if (ingresso == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ingresso.toMap());

  // Add any Firestore field values
  ingresso.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIngressoListFirestoreData(
  List<IngressoStruct>? ingressos,
) =>
    ingressos?.map((e) => getIngressoFirestoreData(e, true)).toList() ?? [];
