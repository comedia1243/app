import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_cupom_widget.dart' show EditCupomWidget;
import 'package:flutter/material.dart';

class EditCupomModel extends FlutterFlowModel<EditCupomWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextFieldValorCupom widget.
  FocusNode? textFieldValorCupomFocusNode;
  TextEditingController? textFieldValorCupomTextController;
  String? Function(BuildContext, String?)?
      textFieldValorCupomTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CupomRecord? temcupom;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textFieldValorCupomFocusNode?.dispose();
    textFieldValorCupomTextController?.dispose();
  }
}
