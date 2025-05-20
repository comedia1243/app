import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'historico_widget.dart' show HistoricoWidget;
import 'package:flutter/material.dart';

class HistoricoModel extends FlutterFlowModel<HistoricoWidget> {
  ///  Local state fields for this component.

  int? atual;

  int? total;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<VendaRecord>? downloadData00;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<VendaRecord>? downloadData;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
