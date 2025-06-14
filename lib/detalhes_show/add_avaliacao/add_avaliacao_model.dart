import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_avaliacao_widget.dart' show AddAvaliacaoWidget;
import 'package:flutter/material.dart';

class AddAvaliacaoModel extends FlutterFlowModel<AddAvaliacaoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AvaliacoesRecord? analytics;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
