import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import 'banner_widget.dart' show BannerWidget;
import 'package:flutter/material.dart';

class BannerModel extends FlutterFlowModel<BannerWidget> {
  ///  Local state fields for this page.

  bool abrir = false;

  ///  State fields for stateful widgets in this page.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel1;
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
    menuAdmModel2.dispose();
  }
}
