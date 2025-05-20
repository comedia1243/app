import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/local/detalhes_local/detalhes_local_widget.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import '/index.dart';
import 'locais_widget.dart' show LocaisWidget;
import 'package:flutter/material.dart';

class LocaisModel extends FlutterFlowModel<LocaisWidget> {
  ///  Local state fields for this page.

  bool abrirMenu = false;

  LocalRecord? detalhesLocal;

  ///  State fields for stateful widgets in this page.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<LocalRecord> simpleSearchResults1 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<LocalRecord>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<LocalRecord> simpleSearchResults2 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<LocalRecord>();
  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel2;
  // Model for detalhesLocal component.
  late DetalhesLocalModel detalhesLocalModel;

  @override
  void initState(BuildContext context) {
    menuAdmModel1 = createModel(context, () => MenuAdmModel());
    menuAdmModel2 = createModel(context, () => MenuAdmModel());
    detalhesLocalModel = createModel(context, () => DetalhesLocalModel());
  }

  @override
  void dispose() {
    menuAdmModel1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    paginatedDataTableController1.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    paginatedDataTableController2.dispose();
    menuAdmModel2.dispose();
    detalhesLocalModel.dispose();
  }
}
