import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import '/index.dart';
import 'new_usuario_widget.dart' show NewUsuarioWidget;
import 'package:flutter/material.dart';

class NewUsuarioModel extends FlutterFlowModel<NewUsuarioWidget> {
  ///  Local state fields for this page.

  String? uid;

  int? total;

  int atual = 0;

  List<String> ordem = [];
  void addToOrdem(String item) => ordem.add(item);
  void removeFromOrdem(String item) => ordem.remove(item);
  void removeAtIndexFromOrdem(int index) => ordem.removeAt(index);
  void insertAtIndexInOrdem(int index, String item) =>
      ordem.insert(index, item);
  void updateOrdemAtIndex(int index, Function(String) updateFn) =>
      ordem[index] = updateFn(ordem[index]);

  bool abrirMenu = false;

  ///  State fields for stateful widgets in this page.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel1;
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode1;
  TextEditingController? textFieldNomeTextController1;
  String? Function(BuildContext, String?)?
      textFieldNomeTextController1Validator;
  // State field(s) for TextFieldE-mail widget.
  FocusNode? textFieldEMailFocusNode1;
  TextEditingController? textFieldEMailTextController1;
  String? Function(BuildContext, String?)?
      textFieldEMailTextController1Validator;
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? confirmPasswordTextController0;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)?
      confirmPasswordTextController0Validator;
  // State field(s) for DropDown3 widget.
  String? dropDown3Value1;
  FormFieldController<String>? dropDown3ValueController1;
  // State field(s) for DropDownLOL widget.
  String? dropDownLOLValue1;
  FormFieldController<String>? dropDownLOLValueController1;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? unicoo;
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode2;
  TextEditingController? textFieldNomeTextController2;
  String? Function(BuildContext, String?)?
      textFieldNomeTextController2Validator;
  // State field(s) for TextFieldE-mail widget.
  FocusNode? textFieldEMailFocusNode2;
  TextEditingController? textFieldEMailTextController2;
  String? Function(BuildContext, String?)?
      textFieldEMailTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility3;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // State field(s) for TextFieldCC widget.
  FocusNode? textFieldCCFocusNode;
  TextEditingController? textFieldCCTextController;
  late bool textFieldCCVisibility;
  String? Function(BuildContext, String?)? textFieldCCTextControllerValidator;
  // State field(s) for DropDown3 widget.
  String? dropDown3Value2;
  FormFieldController<String>? dropDown3ValueController2;
  // State field(s) for DropDownLOL widget.
  String? dropDownLOLValue2;
  FormFieldController<String>? dropDownLOLValueController2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? unicoow;
  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel2;

  @override
  void initState(BuildContext context) {
    menuAdmModel1 = createModel(context, () => MenuAdmModel());
    passwordVisibility1 = false;
    passwordVisibility2 = false;
    passwordVisibility3 = false;
    textFieldCCVisibility = false;
    menuAdmModel2 = createModel(context, () => MenuAdmModel());
  }

  @override
  void dispose() {
    menuAdmModel1.dispose();
    textFieldNomeFocusNode1?.dispose();
    textFieldNomeTextController1?.dispose();

    textFieldEMailFocusNode1?.dispose();
    textFieldEMailTextController1?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    textFieldFocusNode4?.dispose();
    passwordTextController1?.dispose();

    textFieldFocusNode5?.dispose();
    confirmPasswordTextController0?.dispose();

    textFieldNomeFocusNode2?.dispose();
    textFieldNomeTextController2?.dispose();

    textFieldEMailFocusNode2?.dispose();
    textFieldEMailTextController2?.dispose();

    textFieldFocusNode6?.dispose();
    textController7?.dispose();

    textFieldFocusNode7?.dispose();
    textController8?.dispose();

    textFieldFocusNode8?.dispose();
    textController9?.dispose();

    textFieldFocusNode9?.dispose();
    passwordTextController2?.dispose();

    textFieldCCFocusNode?.dispose();
    textFieldCCTextController?.dispose();

    menuAdmModel2.dispose();
  }
}
