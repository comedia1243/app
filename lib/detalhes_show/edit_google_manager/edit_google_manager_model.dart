import '/flutter_flow/flutter_flow_util.dart';
import 'edit_google_manager_widget.dart' show EditGoogleManagerWidget;
import 'package:flutter/material.dart';

class EditGoogleManagerModel extends FlutterFlowModel<EditGoogleManagerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for CheckboxPagina widget.
  bool? checkboxPaginaValue;
  // State field(s) for CheckboxIniciad widget.
  bool? checkboxIniciadValue;
  // State field(s) for CheckboxConcluido widget.
  bool? checkboxConcluidoValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
