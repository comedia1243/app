import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bordero_check_in_p_widget.dart' show BorderoCheckInPWidget;
import 'package:flutter/material.dart';

class BorderoCheckInPModel extends FlutterFlowModel<BorderoCheckInPWidget> {
  ///  Local state fields for this component.

  DocumentReference? newData;

  ///  State fields for stateful widgets in this component.

  var qrcodeScan = '';
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<VendaRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
