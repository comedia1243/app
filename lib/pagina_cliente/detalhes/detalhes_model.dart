import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/cabecalho/cabecalho_widget.dart';
import '/index.dart';
import 'detalhes_widget.dart' show DetalhesWidget;
import 'package:flutter/material.dart';

class DetalhesModel extends FlutterFlowModel<DetalhesWidget> {
  ///  Local state fields for this page.

  String opcoes = 'sobre';

  int pageAvalia = 0;

  String? string;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in detalhes widget.
  ShowsRecord? sheew;
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;

  @override
  void initState(BuildContext context) {
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    cabecalhoModel.dispose();
  }
}
