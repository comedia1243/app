import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/cabecalho/cabecalho_widget.dart';
import '/reutilizavel/card_show/card_show_widget.dart';
import 'local_widget.dart' show LocalWidget;
import 'package:flutter/material.dart';

class LocalModel extends FlutterFlowModel<LocalWidget> {
  ///  Local state fields for this page.

  double? heightCards;

  DateTime? filtro;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // Models for CardShow dynamic component.
  late FlutterFlowDynamicModels<CardShowModel> cardShowModels;
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;

  @override
  void initState(BuildContext context) {
    cardShowModels = FlutterFlowDynamicModels(() => CardShowModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    cardShowModels.dispose();
    cabecalhoModel.dispose();
  }
}
