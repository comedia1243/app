// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends FFFirebaseStruct {
  DataStruct({
    DateTime? date,
    DocumentReference? referencia,
    DocumentReference? show,
    String? identificador,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _referencia = referencia,
        _show = show,
        _identificador = identificador,
        super(firestoreUtilData);

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "referencia" field.
  DocumentReference? _referencia;
  DocumentReference? get referencia => _referencia;
  set referencia(DocumentReference? val) => _referencia = val;

  bool hasReferencia() => _referencia != null;

  // "show" field.
  DocumentReference? _show;
  DocumentReference? get show => _show;
  set show(DocumentReference? val) => _show = val;

  bool hasShow() => _show != null;

  // "identificador" field.
  String? _identificador;
  String get identificador => _identificador ?? '';
  set identificador(String? val) => _identificador = val;

  bool hasIdentificador() => _identificador != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        date: data['date'] as DateTime?,
        referencia: data['referencia'] as DocumentReference?,
        show: data['show'] as DocumentReference?,
        identificador: data['identificador'] as String?,
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'referencia': _referencia,
        'show': _show,
        'identificador': _identificador,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'referencia': serializeParam(
          _referencia,
          ParamType.DocumentReference,
        ),
        'show': serializeParam(
          _show,
          ParamType.DocumentReference,
        ),
        'identificador': serializeParam(
          _identificador,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        referencia: deserializeParam(
          data['referencia'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['data'],
        ),
        show: deserializeParam(
          data['show'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['shows'],
        ),
        identificador: deserializeParam(
          data['identificador'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataStruct &&
        date == other.date &&
        referencia == other.referencia &&
        show == other.show &&
        identificador == other.identificador;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([date, referencia, show, identificador]);
}

DataStruct createDataStruct({
  DateTime? date,
  DocumentReference? referencia,
  DocumentReference? show,
  String? identificador,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DataStruct(
      date: date,
      referencia: referencia,
      show: show,
      identificador: identificador,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DataStruct? updateDataStruct(
  DataStruct? data, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    data
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDataStructData(
  Map<String, dynamic> firestoreData,
  DataStruct? data,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (data == null) {
    return;
  }
  if (data.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && data.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dataData = getDataFirestoreData(data, forFieldValue);
  final nestedData = dataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = data.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDataFirestoreData(
  DataStruct? data, [
  bool forFieldValue = false,
]) {
  if (data == null) {
    return {};
  }
  final firestoreData = mapToFirestore(data.toMap());

  // Add any Firestore field values
  data.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDataListFirestoreData(
  List<DataStruct>? datas,
) =>
    datas?.map((e) => getDataFirestoreData(e, true)).toList() ?? [];
