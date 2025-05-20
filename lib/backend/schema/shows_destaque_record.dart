import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShowsDestaqueRecord extends FirestoreRecord {
  ShowsDestaqueRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "show" field.
  DocumentReference? _show;
  DocumentReference? get show => _show;
  bool hasShow() => _show != null;

  void _initializeFields() {
    _show = snapshotData['show'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shows_destaque');

  static Stream<ShowsDestaqueRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShowsDestaqueRecord.fromSnapshot(s));

  static Future<ShowsDestaqueRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShowsDestaqueRecord.fromSnapshot(s));

  static ShowsDestaqueRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShowsDestaqueRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShowsDestaqueRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShowsDestaqueRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShowsDestaqueRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShowsDestaqueRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShowsDestaqueRecordData({
  DocumentReference? show,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'show': show,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShowsDestaqueRecordDocumentEquality
    implements Equality<ShowsDestaqueRecord> {
  const ShowsDestaqueRecordDocumentEquality();

  @override
  bool equals(ShowsDestaqueRecord? e1, ShowsDestaqueRecord? e2) {
    return e1?.show == e2?.show;
  }

  @override
  int hash(ShowsDestaqueRecord? e) => const ListEquality().hash([e?.show]);

  @override
  bool isValidKey(Object? o) => o is ShowsDestaqueRecord;
}
