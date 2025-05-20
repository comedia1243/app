// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PreVendaStruct extends FFFirebaseStruct {
  PreVendaStruct({
    DocumentReference? show,
    String? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _show = show,
        _status = status,
        super(firestoreUtilData);

  // "show" field.
  DocumentReference? _show;
  DocumentReference? get show => _show;
  set show(DocumentReference? val) => _show = val;

  bool hasShow() => _show != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static PreVendaStruct fromMap(Map<String, dynamic> data) => PreVendaStruct(
        show: data['show'] as DocumentReference?,
        status: data['status'] as String?,
      );

  static PreVendaStruct? maybeFromMap(dynamic data) =>
      data is Map ? PreVendaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'show': _show,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'show': serializeParam(
          _show,
          ParamType.DocumentReference,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static PreVendaStruct fromSerializableMap(Map<String, dynamic> data) =>
      PreVendaStruct(
        show: deserializeParam(
          data['show'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['shows'],
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PreVendaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PreVendaStruct &&
        show == other.show &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([show, status]);
}

PreVendaStruct createPreVendaStruct({
  DocumentReference? show,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PreVendaStruct(
      show: show,
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PreVendaStruct? updatePreVendaStruct(
  PreVendaStruct? preVenda, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    preVenda
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPreVendaStructData(
  Map<String, dynamic> firestoreData,
  PreVendaStruct? preVenda,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (preVenda == null) {
    return;
  }
  if (preVenda.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && preVenda.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final preVendaData = getPreVendaFirestoreData(preVenda, forFieldValue);
  final nestedData = preVendaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = preVenda.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPreVendaFirestoreData(
  PreVendaStruct? preVenda, [
  bool forFieldValue = false,
]) {
  if (preVenda == null) {
    return {};
  }
  final firestoreData = mapToFirestore(preVenda.toMap());

  // Add any Firestore field values
  preVenda.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPreVendaListFirestoreData(
  List<PreVendaStruct>? preVendas,
) =>
    preVendas?.map((e) => getPreVendaFirestoreData(e, true)).toList() ?? [];
