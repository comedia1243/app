import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'novo_ingresso_widget.dart' show NovoIngressoWidget;
import 'package:flutter/material.dart';

class NovoIngressoModel extends FlutterFlowModel<NovoIngressoWidget> {
  ///  Local state fields for this component.

  DateTime? finalizacao;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextFieldvalid widget.
  FocusNode? textFieldvalidFocusNode;
  TextEditingController? textFieldvalidTextController;
  String? Function(BuildContext, String?)?
      textFieldvalidTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  DateTime? datePicked;
  // State field(s) for CheckboxCupom widget.
  bool? checkboxCupomValue;
  // State field(s) for TextFieldcupomm widget.
  FocusNode? textFieldcupommFocusNode;
  TextEditingController? textFieldcupommTextController;
  String? Function(BuildContext, String?)?
      textFieldcupommTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextFieldValorCupom widget.
  FocusNode? textFieldValorCupomFocusNode;
  TextEditingController? textFieldValorCupomTextController;
  String? Function(BuildContext, String?)?
      textFieldValorCupomTextControllerValidator;
  // State field(s) for TextFieldQuantCupom widget.
  FocusNode? textFieldQuantCupomFocusNode;
  TextEditingController? textFieldQuantCupomTextController;
  String? Function(BuildContext, String?)?
      textFieldQuantCupomTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? newIngressocupom;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? newIngresso;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldvalidFocusNode?.dispose();
    textFieldvalidTextController?.dispose();

    textFieldcupommFocusNode?.dispose();
    textFieldcupommTextController?.dispose();

    textFieldValorCupomFocusNode?.dispose();
    textFieldValorCupomTextController?.dispose();

    textFieldQuantCupomFocusNode?.dispose();
    textFieldQuantCupomTextController?.dispose();
  }
}
