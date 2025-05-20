import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import 'faixaetaria_widget.dart' show FaixaetariaWidget;
import 'package:flutter/material.dart';

class FaixaetariaModel extends FlutterFlowModel<FaixaetariaWidget> {
  ///  Local state fields for this page.

  bool abrirMenu = false;

  ///  State fields for stateful widgets in this page.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<FaixaEtariaRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<FaixaEtariaRecord>();
  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel2;

  @override
  void initState(BuildContext context) {
    menuAdmModel1 = createModel(context, () => MenuAdmModel());
    menuAdmModel2 = createModel(context, () => MenuAdmModel());
  }

  @override
  void dispose() {
    menuAdmModel1.dispose();
    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
    menuAdmModel2.dispose();
  }
}
