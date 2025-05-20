import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_pixel_widget.dart' show AddPixelWidget;
import 'package:flutter/material.dart';

class AddPixelModel extends FlutterFlowModel<AddPixelWidget> {
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
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AnalyticsRecord? analytics;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
