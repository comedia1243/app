import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'carrega_widget.dart' show CarregaWidget;
import 'package:flutter/material.dart';

class CarregaModel extends FlutterFlowModel<CarregaWidget> {
  ///  Local state fields for this component.

  int? atual;

  int? total;

  String? idReferencia;

  List<DocumentReference> referenciaSelect = [];
  void addToReferenciaSelect(DocumentReference item) =>
      referenciaSelect.add(item);
  void removeFromReferenciaSelect(DocumentReference item) =>
      referenciaSelect.remove(item);
  void removeAtIndexFromReferenciaSelect(int index) =>
      referenciaSelect.removeAt(index);
  void insertAtIndexInReferenciaSelect(int index, DocumentReference item) =>
      referenciaSelect.insert(index, item);
  void updateReferenciaSelectAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      referenciaSelect[index] = updateFn(referenciaSelect[index]);

  int? quantdd;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Create Document] action in carrega widget.
  VendaRecord? venda;
  // Stores action output result for [Backend Call - Create Document] action in carrega widget.
  SelectIngressoRecord? select;
  // Stores action output result for [Backend Call - API (Fluxo de Pagamento)] action in carrega widget.
  ApiCallResponse? fluxoPix;
  // Stores action output result for [Backend Call - API (Fluxo de Pagamento)] action in carrega widget.
  ApiCallResponse? fluxoCartao;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
