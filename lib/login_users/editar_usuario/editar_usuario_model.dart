import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import 'editar_usuario_widget.dart' show EditarUsuarioWidget;
import 'package:flutter/material.dart';

class EditarUsuarioModel extends FlutterFlowModel<EditarUsuarioWidget> {
  ///  Local state fields for this page.

  bool abrirMenu = false;

  ///  State fields for stateful widgets in this page.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel1;
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode1;
  TextEditingController? textFieldNomeTextController1;
  String? Function(BuildContext, String?)?
      textFieldNomeTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for DropDown3 widget.
  String? dropDown3Value1;
  FormFieldController<String>? dropDown3ValueController1;
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode2;
  TextEditingController? textFieldNomeTextController2;
  String? Function(BuildContext, String?)?
      textFieldNomeTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for DropDown3 widget.
  String? dropDown3Value2;
  FormFieldController<String>? dropDown3ValueController2;
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
    textFieldNomeFocusNode1?.dispose();
    textFieldNomeTextController1?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    textFieldNomeFocusNode2?.dispose();
    textFieldNomeTextController2?.dispose();

    textFieldFocusNode4?.dispose();
    textController6?.dispose();

    textFieldFocusNode5?.dispose();
    textController7?.dispose();

    textFieldFocusNode6?.dispose();
    textController8?.dispose();

    menuAdmModel2.dispose();
  }
}
