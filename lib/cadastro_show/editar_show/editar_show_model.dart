import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_show_widget.dart' show EditarShowWidget;
import 'package:flutter/material.dart';

class EditarShowModel extends FlutterFlowModel<EditarShowWidget> {
  ///  Local state fields for this page.

  String? newfoto;

  bool deletfoto = false;

  bool removerLocal = false;

  bool removerFaixa = false;

  bool deletMapa = false;

  String? newMapa;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - cropMultipleImg] action in Container widget.
  List<String>? cropImageEdit;
  // Stores action output result for [Custom Action - cropMultipleImg] action in ContainerUpMap widget.
  List<String>? cropImageCap;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDownLocal widget.
  String? dropDownLocalValue;
  FormFieldController<String>? dropDownLocalValueController;
  // State field(s) for DropDownRocmenda widget.
  String? dropDownRocmendaValue;
  FormFieldController<String>? dropDownRocmendaValueController;
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
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? atualizalocaltd;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? atualizalocal;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? atualizalocalMeio;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? atualizalocalSemPhoto;

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
