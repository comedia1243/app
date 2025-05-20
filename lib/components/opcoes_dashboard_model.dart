import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import 'opcoes_dashboard_widget.dart' show OpcoesDashboardWidget;
import 'package:flutter/material.dart';

class OpcoesDashboardModel extends FlutterFlowModel<OpcoesDashboardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel;

  @override
  void initState(BuildContext context) {
    menuAdmModel = createModel(context, () => MenuAdmModel());
  }

  @override
  void dispose() {
    menuAdmModel.dispose();
  }
}
