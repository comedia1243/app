import '/flutter_flow/flutter_flow_util.dart';
import 'reset_senha_widget.dart' show ResetSenhaWidget;
import 'package:flutter/material.dart';

class ResetSenhaModel extends FlutterFlowModel<ResetSenhaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
