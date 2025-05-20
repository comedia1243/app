import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import '/index.dart';
import 'destaque_shows_widget.dart' show DestaqueShowsWidget;
import 'package:flutter/material.dart';

class DestaqueShowsModel extends FlutterFlowModel<DestaqueShowsWidget> {
  ///  Local state fields for this page.

  bool abrir = false;

  String filtroTempo = 'Ativo';

  LocalRecord? filtrolocal;

  ///  State fields for stateful widgets in this page.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ShowsRecord>();
  // State field(s) for TextFieldPP widget.
  FocusNode? textFieldPPFocusNode;
  TextEditingController? textFieldPPTextController;
  String? Function(BuildContext, String?)? textFieldPPTextControllerValidator;
  List<ShowsRecord> simpleSearchResults = [];
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
    paginatedDataTableController.dispose();
    textFieldPPFocusNode?.dispose();
    textFieldPPTextController?.dispose();

    menuAdmModel2.dispose();
  }
}
