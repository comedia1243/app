import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'delet_widget.dart' show DeletWidget;
import 'package:flutter/material.dart';

class DeletModel extends FlutterFlowModel<DeletWidget> {
  ///  Local state fields for this component.

  int? atual;

  int? total;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<IngressoRecord>? deletingresso;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<DataRecord>? deletdata;
  // Stores action output result for [Backend Call - API (Estornar Pagamento)] action in Button widget.
  ApiCallResponse? reembolso;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  DataRecord? datavenda;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
