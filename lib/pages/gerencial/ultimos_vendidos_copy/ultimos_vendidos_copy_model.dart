import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import 'ultimos_vendidos_copy_widget.dart' show UltimosVendidosCopyWidget;
import 'package:flutter/material.dart';

class UltimosVendidosCopyModel
    extends FlutterFlowModel<UltimosVendidosCopyWidget> {
  ///  Local state fields for this page.

  double valorTotal = 0.0;

  int? contagemAtual;

  int? contagemTotal;

  ///  State fields for stateful widgets in this page.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<VendaRecord>();

  @override
  void initState(BuildContext context) {
    menuAdmModel = createModel(context, () => MenuAdmModel());
  }

  @override
  void dispose() {
    menuAdmModel.dispose();
    paginatedDataTableController.dispose();
  }
}
