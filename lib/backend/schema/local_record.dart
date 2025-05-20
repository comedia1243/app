import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocalRecord extends FirestoreRecord {
  LocalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "oculto" field.
  bool? _oculto;
  bool get oculto => _oculto ?? false;
  bool hasOculto() => _oculto != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "dataCriacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  // "maps" field.
  String? _maps;
  String get maps => _maps ?? '';
  bool hasMaps() => _maps != null;

  // "produtores" field.
  List<String>? _produtores;
  List<String> get produtores => _produtores ?? const [];
  bool hasProdutores() => _produtores != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  bool hasSlug() => _slug != null;

  // "cuponsNumber" field.
  int? _cuponsNumber;
  int get cuponsNumber => _cuponsNumber ?? 0;
  bool hasCuponsNumber() => _cuponsNumber != null;

  // "quantddAssentos" field.
  int? _quantddAssentos;
  int get quantddAssentos => _quantddAssentos ?? 0;
  bool hasQuantddAssentos() => _quantddAssentos != null;

  void _initializeFields() {
    _cidade = snapshotData['cidade'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _foto = snapshotData['foto'] as String?;
    _nome = snapshotData['nome'] as String?;
    _oculto = snapshotData['oculto'] as bool?;
    _id = snapshotData['id'] as String?;
    _dataCriacao = snapshotData['dataCriacao'] as DateTime?;
    _maps = snapshotData['maps'] as String?;
    _produtores = getDataList(snapshotData['produtores']);
    _slug = snapshotData['slug'] as String?;
    _cuponsNumber = castToType<int>(snapshotData['cuponsNumber']);
    _quantddAssentos = castToType<int>(snapshotData['quantddAssentos']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('local');

  static Stream<LocalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocalRecord.fromSnapshot(s));

  static Future<LocalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocalRecord.fromSnapshot(s));

  static LocalRecord fromSnapshot(DocumentSnapshot snapshot) => LocalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocalRecordData({
  String? cidade,
  String? descricao,
  String? endereco,
  String? foto,
  String? nome,
  bool? oculto,
  String? id,
  DateTime? dataCriacao,
  String? maps,
  String? slug,
  int? cuponsNumber,
  int? quantddAssentos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cidade': cidade,
      'descricao': descricao,
      'endereco': endereco,
      'foto': foto,
      'nome': nome,
      'oculto': oculto,
      'id': id,
      'dataCriacao': dataCriacao,
      'maps': maps,
      'slug': slug,
      'cuponsNumber': cuponsNumber,
      'quantddAssentos': quantddAssentos,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocalRecordDocumentEquality implements Equality<LocalRecord> {
  const LocalRecordDocumentEquality();

  @override
  bool equals(LocalRecord? e1, LocalRecord? e2) {
    const listEquality = ListEquality();
    return e1?.cidade == e2?.cidade &&
        e1?.descricao == e2?.descricao &&
        e1?.endereco == e2?.endereco &&
        e1?.foto == e2?.foto &&
        e1?.nome == e2?.nome &&
        e1?.oculto == e2?.oculto &&
        e1?.id == e2?.id &&
        e1?.dataCriacao == e2?.dataCriacao &&
        e1?.maps == e2?.maps &&
        listEquality.equals(e1?.produtores, e2?.produtores) &&
        e1?.slug == e2?.slug &&
        e1?.cuponsNumber == e2?.cuponsNumber &&
        e1?.quantddAssentos == e2?.quantddAssentos;
  }

  @override
  int hash(LocalRecord? e) => const ListEquality().hash([
        e?.cidade,
        e?.descricao,
        e?.endereco,
        e?.foto,
        e?.nome,
        e?.oculto,
        e?.id,
        e?.dataCriacao,
        e?.maps,
        e?.produtores,
        e?.slug,
        e?.cuponsNumber,
        e?.quantddAssentos
      ]);

  @override
  bool isValidKey(Object? o) => o is LocalRecord;
}
