import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'venda_manual_widget.dart' show VendaManualWidget;
import 'package:flutter/material.dart';

class VendaManualModel extends FlutterFlowModel<VendaManualWidget> {
  ///  Local state fields for this component.

  DocumentReference? selectShow;

  DocumentReference? selectData;

  DocumentReference? selectIngresso;

  IngressoRecord? ingresski;

  ShowsRecord? show;

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
  // State field(s) for DropDown111 widget.
  String? dropDown111Value;
  FormFieldController<String>? dropDown111ValueController;
  // State field(s) for DropDown222 widget.
  String? dropDown222Value;
  FormFieldController<String>? dropDown222ValueController;
  // State field(s) for DropDown333 widget.
  String? dropDown333Value;
  FormFieldController<String>? dropDown333ValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PreVendaRecord? pree;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SelectIngressoRecord? ingress;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  VendaRecord? vendaa;

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
  }
}
