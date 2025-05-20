import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssentosStatusRecord extends FirestoreRecord {
  AssentosStatusRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _index = castToType<int>(snapshotData['index']);
    _status = snapshotData['status'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('assentosStatus')
          : FirebaseFirestore.instance.collectionGroup('assentosStatus');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('assentosStatus').doc(id);

  static Stream<AssentosStatusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssentosStatusRecord.fromSnapshot(s));

  static Future<AssentosStatusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssentosStatusRecord.fromSnapshot(s));

  static AssentosStatusRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssentosStatusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssentosStatusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssentosStatusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssentosStatusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssentosStatusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssentosStatusRecordData({
  int? index,
  String? status,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'index': index,
      'status': status,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssentosStatusRecordDocumentEquality
    implements Equality<AssentosStatusRecord> {
  const AssentosStatusRecordDocumentEquality();

  @override
  bool equals(AssentosStatusRecord? e1, AssentosStatusRecord? e2) {
    return e1?.index == e2?.index &&
        e1?.status == e2?.status &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(AssentosStatusRecord? e) =>
      const ListEquality().hash([e?.index, e?.status, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is AssentosStatusRecord;
}
