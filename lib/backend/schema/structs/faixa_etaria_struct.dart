// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FaixaEtariaStruct extends FFFirebaseStruct {
  FaixaEtariaStruct({
    String? nome,
    String? descricao,
    String? icon,
    String? uid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nome = nome,
        _descricao = descricao,
        _icon = icon,
        _uid = uid,
        super(firestoreUtilData);

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;

  bool hasIcon() => _icon != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  static FaixaEtariaStruct fromMap(Map<String, dynamic> data) =>
      FaixaEtariaStruct(
        nome: data['nome'] as String?,
        descricao: data['descricao'] as String?,
        icon: data['icon'] as String?,
        uid: data['uid'] as String?,
      );

  static FaixaEtariaStruct? maybeFromMap(dynamic data) => data is Map
      ? FaixaEtariaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'descricao': _descricao,
        'icon': _icon,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
      }.withoutNulls;

  static FaixaEtariaStruct fromSerializableMap(Map<String, dynamic> data) =>
      FaixaEtariaStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FaixaEtariaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FaixaEtariaStruct &&
        nome == other.nome &&
        descricao == other.descricao &&
        icon == other.icon &&
        uid == other.uid;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, descricao, icon, uid]);
}

FaixaEtariaStruct createFaixaEtariaStruct({
  String? nome,
  String? descricao,
  String? icon,
  String? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FaixaEtariaStruct(
      nome: nome,
      descricao: descricao,
      icon: icon,
      uid: uid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FaixaEtariaStruct? updateFaixaEtariaStruct(
  FaixaEtariaStruct? faixaEtaria, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    faixaEtaria
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFaixaEtariaStructData(
  Map<String, dynamic> firestoreData,
  FaixaEtariaStruct? faixaEtaria,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (faixaEtaria == null) {
    return;
  }
  if (faixaEtaria.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && faixaEtaria.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final faixaEtariaData =
      getFaixaEtariaFirestoreData(faixaEtaria, forFieldValue);
  final nestedData =
      faixaEtariaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = faixaEtaria.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFaixaEtariaFirestoreData(
  FaixaEtariaStruct? faixaEtaria, [
  bool forFieldValue = false,
]) {
  if (faixaEtaria == null) {
    return {};
  }
  final firestoreData = mapToFirestore(faixaEtaria.toMap());

  // Add any Firestore field values
  faixaEtaria.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFaixaEtariaListFirestoreData(
  List<FaixaEtariaStruct>? faixaEtarias,
) =>
    faixaEtarias?.map((e) => getFaixaEtariaFirestoreData(e, true)).toList() ??
    [];
