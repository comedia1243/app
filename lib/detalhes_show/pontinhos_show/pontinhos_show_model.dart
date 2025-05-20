import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pontinhos_show_widget.dart' show PontinhosShowWidget;
import 'package:flutter/material.dart';

class PontinhosShowModel extends FlutterFlowModel<PontinhosShowWidget> {
  ///  Local state fields for this component.

  int? atual;

  int? total;

  int? atualSS;

  int? totalSS;

  List<DocumentReference> ingressosRef = [];
  void addToIngressosRef(DocumentReference item) => ingressosRef.add(item);
  void removeFromIngressosRef(DocumentReference item) =>
      ingressosRef.remove(item);
  void removeAtIndexFromIngressosRef(int index) => ingressosRef.removeAt(index);
  void insertAtIndexInIngressosRef(int index, DocumentReference item) =>
      ingressosRef.insert(index, item);
  void updateIngressosRefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      ingressosRef[index] = updateFn(ingressosRef[index]);

  int? totalIngressos;

  List<DataRecord> newDatas = [];
  void addToNewDatas(DataRecord item) => newDatas.add(item);
  void removeFromNewDatas(DataRecord item) => newDatas.remove(item);
  void removeAtIndexFromNewDatas(int index) => newDatas.removeAt(index);
  void insertAtIndexInNewDatas(int index, DataRecord item) =>
      newDatas.insert(index, item);
  void updateNewDatasAtIndex(int index, Function(DataRecord) updateFn) =>
      newDatas[index] = updateFn(newDatas[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ShowsRecord? criacaoshow1f;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<DataRecord>? duplidata;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DataRecord? dataCria;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<IngressoRecord>? ingresso;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? createIngresso;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
