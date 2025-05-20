import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  bool hasCnpj() => _cnpj != null;

  // "nivelAcesso" field.
  String? _nivelAcesso;
  String get nivelAcesso => _nivelAcesso ?? '';
  bool hasNivelAcesso() => _nivelAcesso != null;

  // "shows" field.
  List<DocumentReference>? _shows;
  List<DocumentReference> get shows => _shows ?? const [];
  bool hasShows() => _shows != null;

  // "locais" field.
  List<String>? _locais;
  List<String> get locais => _locais ?? const [];
  bool hasLocais() => _locais != null;

  // "pix" field.
  String? _pix;
  String get pix => _pix ?? '';
  bool hasPix() => _pix != null;

  // "identificador" field.
  String? _identificador;
  String get identificador => _identificador ?? '';
  bool hasIdentificador() => _identificador != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _cnpj = snapshotData['cnpj'] as String?;
    _nivelAcesso = snapshotData['nivelAcesso'] as String?;
    _shows = getDataList(snapshotData['shows']);
    _locais = getDataList(snapshotData['locais']);
    _pix = snapshotData['pix'] as String?;
    _identificador = snapshotData['identificador'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? cnpj,
  String? nivelAcesso,
  String? pix,
  String? identificador,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'cnpj': cnpj,
      'nivelAcesso': nivelAcesso,
      'pix': pix,
      'identificador': identificador,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.cnpj == e2?.cnpj &&
        e1?.nivelAcesso == e2?.nivelAcesso &&
        listEquality.equals(e1?.shows, e2?.shows) &&
        listEquality.equals(e1?.locais, e2?.locais) &&
        e1?.pix == e2?.pix &&
        e1?.identificador == e2?.identificador &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.cnpj,
        e?.nivelAcesso,
        e?.shows,
        e?.locais,
        e?.pix,
        e?.identificador,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
