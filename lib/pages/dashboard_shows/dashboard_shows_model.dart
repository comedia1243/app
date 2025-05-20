import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/gerencial/menu_produtor/menu_produtor_widget.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import '/index.dart';
import 'dashboard_shows_widget.dart' show DashboardShowsWidget;
import 'package:flutter/material.dart';

class DashboardShowsModel extends FlutterFlowModel<DashboardShowsWidget> {
  ///  Local state fields for this page.

  bool abrir = false;

  String filtroTempo = 'Ativo';

  LocalRecord? filtrolocal;

  DateTime? dataPesquisa;

  ///  State fields for stateful widgets in this page.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel1;
  // Model for menu_produtor component.
  late MenuProdutorModel menuProdutorModel1;
  DateTime? datePicked1;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<VendaRecord>? vendas;
  DateTime? datePicked2;
  // State field(s) for dropdowFiltroLocal widget.
  String? dropdowFiltroLocalValue;
  FormFieldController<String>? dropdowFiltroLocalValueController;
  // State field(s) for TextFieldPesquiseGrande widget.
  FocusNode? textFieldPesquiseGrandeFocusNode;
  TextEditingController? textFieldPesquiseGrandeTextController;
  String? Function(BuildContext, String?)?
      textFieldPesquiseGrandeTextControllerValidator;
  List<ShowsRecord> simpleSearchResults1 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ShowsRecord>();
  // State field(s) for TextFieldPP widget.
  FocusNode? textFieldPPFocusNode;
  TextEditingController? textFieldPPTextController;
  String? Function(BuildContext, String?)? textFieldPPTextControllerValidator;
  List<ShowsRecord> simpleSearchResults2 = [];
  // State field(s) for TextFieldPPkkk widget.
  FocusNode? textFieldPPkkkFocusNode;
  TextEditingController? textFieldPPkkkTextController;
  String? Function(BuildContext, String?)?
      textFieldPPkkkTextControllerValidator;
  List<ShowsRecord> simpleSearchResults3 = [];
  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel2;
  // Model for menu_produtor component.
  late MenuProdutorModel menuProdutorModel2;

  @override
  void initState(BuildContext context) {
    menuAdmModel1 = createModel(context, () => MenuAdmModel());
    menuProdutorModel1 = createModel(context, () => MenuProdutorModel());
    menuAdmModel2 = createModel(context, () => MenuAdmModel());
    menuProdutorModel2 = createModel(context, () => MenuProdutorModel());
  }

  @override
  void dispose() {
    menuAdmModel1.dispose();
    menuProdutorModel1.dispose();
    textFieldPesquiseGrandeFocusNode?.dispose();
    textFieldPesquiseGrandeTextController?.dispose();

    paginatedDataTableController.dispose();
    textFieldPPFocusNode?.dispose();
    textFieldPPTextController?.dispose();

    textFieldPPkkkFocusNode?.dispose();
    textFieldPPkkkTextController?.dispose();

    menuAdmModel2.dispose();
    menuProdutorModel2.dispose();
  }
}
