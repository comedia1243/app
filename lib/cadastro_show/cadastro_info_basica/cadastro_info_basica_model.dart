import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cadastro_info_basica_widget.dart' show CadastroInfoBasicaWidget;
import 'package:flutter/material.dart';

class CadastroInfoBasicaModel
    extends FlutterFlowModel<CadastroInfoBasicaWidget> {
  ///  Local state fields for this component.

  bool abrir = true;

  String? foto;

  String? recomenda;

  String? imgCasa;

  int? atual = 0;

  int? total;

  String? idshow;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - cropMultipleImg] action in Container widget.
  List<String>? cropImage;
  // Stores action output result for [Custom Action - cropMultipleImg] action in Container widget.
  List<String>? cropImageAssentos;
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  // State field(s) for TextFieldSlug widget.
  FocusNode? textFieldSlugFocusNode;
  TextEditingController? textFieldSlugTextController;
  String? Function(BuildContext, String?)? textFieldSlugTextControllerValidator;
  // State field(s) for DropDownLocal widget.
  String? dropDownLocalValue;
  FormFieldController<String>? dropDownLocalValueController;
  // State field(s) for DropDownLocalADM widget.
  String? dropDownLocalADMValue;
  FormFieldController<String>? dropDownLocalADMValueController;
  // State field(s) for DropDownRocmenda widget.
  String? dropDownRocmendaValue;
  FormFieldController<String>? dropDownRocmendaValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDowProductor widget.
  List<String>? dropDowProductorValue;
  FormFieldController<List<String>>? dropDowProductorValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // Stores action output result for [Custom Action - formatString] action in Button widget.
  String? slug;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ShowsRecord? existe;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? localADM;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ShowsRecord? criacaoshowProduzer;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? productorsaw;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? localADMmm;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ShowsRecord? criacaoshowUser;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? localNOMRal;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ShowsRecord? criacaoshow;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? localADM2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ShowsRecord? criacaoshowProduzer2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? productorsaw2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? localADMmm2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ShowsRecord? criacaoshowUser2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LocalRecord? localNOMRalk;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ShowsRecord? criacaoshow2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldSlugFocusNode?.dispose();
    textFieldSlugTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();

    textFieldFocusNode3?.dispose();
    textController5?.dispose();

    textFieldFocusNode4?.dispose();
    textController6?.dispose();
  }
}
