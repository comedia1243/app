import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/cabecalho/cabecalho_widget.dart';
import '/index.dart';
import 'detalhes_copy_widget.dart' show DetalhesCopyWidget;
import 'package:flutter/material.dart';

class DetalhesCopyModel extends FlutterFlowModel<DetalhesCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PreVendaRecord? criadoprevenda;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;

  @override
  void initState(BuildContext context) {
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    cabecalhoModel.dispose();
  }
}
