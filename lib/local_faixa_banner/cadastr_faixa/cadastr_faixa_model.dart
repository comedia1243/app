import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastr_faixa_widget.dart' show CadastrFaixaWidget;
import 'package:flutter/material.dart';

class CadastrFaixaModel extends FlutterFlowModel<CadastrFaixaWidget> {
  ///  Local state fields for this component.

  String? icon;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FaixaEtariaRecord? newfaixa;

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
