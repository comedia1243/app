import '/backend/backend.dart';
import '/compra/compra_ingressos/compra_ingressos_widget.dart';
import '/compra/datas_venda/datas_venda_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/cabecalho/cabecalho_widget.dart';
import 'compra_widget.dart' show CompraWidget;
import 'package:flutter/material.dart';

class CompraModel extends FlutterFlowModel<CompraWidget> {
  ///  Local state fields for this page.

  int? ingressos = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in compra widget.
  DataRecord? data;
  // Stores action output result for [Firestore Query - Query a collection] action in compra widget.
  ShowsRecord? sheemi;
  // Stores action output result for [Firestore Query - Query a collection] action in compra widget.
  DataRecord? data2;
  // Model for datasVenda component.
  late DatasVendaModel datasVendaModel;
  // Model for CompraIngressos component.
  late CompraIngressosModel compraIngressosModel;
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;

  @override
  void initState(BuildContext context) {
    datasVendaModel = createModel(context, () => DatasVendaModel());
    compraIngressosModel = createModel(context, () => CompraIngressosModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    datasVendaModel.dispose();
    compraIngressosModel.dispose();
    cabecalhoModel.dispose();
  }
}
