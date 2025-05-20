import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import '/index.dart';
import 'painel_financeiro_a_d_m_widget.dart' show PainelFinanceiroADMWidget;
import 'package:flutter/material.dart';

class PainelFinanceiroADMModel
    extends FlutterFlowModel<PainelFinanceiroADMWidget> {
  ///  Local state fields for this page.

  double valorTotal = 0.0;

  int? contagemAtual;

  int? contagemTotal;

  ///  State fields for stateful widgets in this page.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel;
  // Stores action output result for [Backend Call - API (Saldo Copy)] action in Icon widget.
  ApiCallResponse? apiResultbs1Copyw;
  // Stores action output result for [Backend Call - API (Saldo Copy)] action in Icon widget.
  ApiCallResponse? apiResultbs1CopywCopy;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    menuAdmModel = createModel(context, () => MenuAdmModel());
  }

  @override
  void dispose() {
    menuAdmModel.dispose();
  }
}
