import '/flutter_flow/flutter_flow_util.dart';
import 'formulario002_widget.dart' show Formulario002Widget;
import 'package:flutter/material.dart';

class Formulario002Model extends FlutterFlowModel<Formulario002Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
