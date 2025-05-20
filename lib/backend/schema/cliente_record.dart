import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteRecord extends FirestoreRecord {
  ClienteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "celular" field.
  String? _celular;
  String get celular => _celular ?? '';
  bool hasCelular() => _celular != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _celular = snapshotData['celular'] as String?;
    _email = snapshotData['email'] as String?;
    _id = snapshotData['id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cliente');

  static Stream<ClienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClienteRecord.fromSnapshot(s));

  static Future<ClienteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClienteRecord.fromSnapshot(s));

  static ClienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClienteRecordData({
  String? nome,
  String? cpf,
  String? celular,
  String? email,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'cpf': cpf,
      'celular': celular,
      'email': email,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClienteRecordDocumentEquality implements Equality<ClienteRecord> {
  const ClienteRecordDocumentEquality();

  @override
  bool equals(ClienteRecord? e1, ClienteRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.cpf == e2?.cpf &&
        e1?.celular == e2?.celular &&
        e1?.email == e2?.email &&
        e1?.id == e2?.id;
  }

  @override
  int hash(ClienteRecord? e) =>
      const ListEquality().hash([e?.nome, e?.cpf, e?.celular, e?.email, e?.id]);

  @override
  bool isValidKey(Object? o) => o is ClienteRecord;
}
