import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/cabecalho/cabecalho_widget.dart';
import '/index.dart';
import 'pesquisa_widget.dart' show PesquisaWidget;
import 'package:flutter/material.dart';

class PesquisaModel extends FlutterFlowModel<PesquisaWidget> {
  ///  Local state fields for this page.

  double? heightCards;

  DateTime? data;

  ///  State fields for stateful widgets in this page.

  List<ShowsRecord> simpleSearchResults = [];
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
