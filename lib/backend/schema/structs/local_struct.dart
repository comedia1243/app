// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LocalStruct extends FFFirebaseStruct {
  LocalStruct({
    DocumentReference? referencia,
    String? endereco,
    String? nome,
    String? slug,
    String? maps,
    String? cidade,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _referencia = referencia,
        _endereco = endereco,
        _nome = nome,
        _slug = slug,
        _maps = maps,
        _cidade = cidade,
        super(firestoreUtilData);

  // "referencia" field.
  DocumentReference? _referencia;
  DocumentReference? get referencia => _referencia;
  set referencia(DocumentReference? val) => _referencia = val;

  bool hasReferencia() => _referencia != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  set slug(String? val) => _slug = val;

  bool hasSlug() => _slug != null;

  // "maps" field.
  String? _maps;
  String get maps => _maps ?? '';
  set maps(String? val) => _maps = val;

  bool hasMaps() => _maps != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  static LocalStruct fromMap(Map<String, dynamic> data) => LocalStruct(
        referencia: data['referencia'] as DocumentReference?,
        endereco: data['endereco'] as String?,
        nome: data['nome'] as String?,
        slug: data['slug'] as String?,
        maps: data['maps'] as String?,
        cidade: data['cidade'] as String?,
      );

  static LocalStruct? maybeFromMap(dynamic data) =>
      data is Map ? LocalStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'referencia': _referencia,
        'endereco': _endereco,
        'nome': _nome,
        'slug': _slug,
        'maps': _maps,
        'cidade': _cidade,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referencia': serializeParam(
          _referencia,
          ParamType.DocumentReference,
        ),
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'slug': serializeParam(
          _slug,
          ParamType.String,
        ),
        'maps': serializeParam(
          _maps,
          ParamType.String,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
      }.withoutNulls;

  static LocalStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocalStruct(
        referencia: deserializeParam(
          data['referencia'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['local'],
        ),
        endereco: deserializeParam(
          data['endereco'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        slug: deserializeParam(
          data['slug'],
          ParamType.String,
          false,
        ),
        maps: deserializeParam(
          data['maps'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LocalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocalStruct &&
        referencia == other.referencia &&
        endereco == other.endereco &&
        nome == other.nome &&
        slug == other.slug &&
        maps == other.maps &&
        cidade == other.cidade;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([referencia, endereco, nome, slug, maps, cidade]);
}

LocalStruct createLocalStruct({
  DocumentReference? referencia,
  String? endereco,
  String? nome,
  String? slug,
  String? maps,
  String? cidade,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocalStruct(
      referencia: referencia,
      endereco: endereco,
      nome: nome,
      slug: slug,
      maps: maps,
      cidade: cidade,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LocalStruct? updateLocalStruct(
  LocalStruct? local, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    local
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLocalStructData(
  Map<String, dynamic> firestoreData,
  LocalStruct? local,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (local == null) {
    return;
  }
  if (local.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && local.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final localData = getLocalFirestoreData(local, forFieldValue);
  final nestedData = localData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = local.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLocalFirestoreData(
  LocalStruct? local, [
  bool forFieldValue = false,
]) {
  if (local == null) {
    return {};
  }
  final firestoreData = mapToFirestore(local.toMap());

  // Add any Firestore field values
  local.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocalListFirestoreData(
  List<LocalStruct>? locals,
) =>
    locals?.map((e) => getLocalFirestoreData(e, true)).toList() ?? [];
