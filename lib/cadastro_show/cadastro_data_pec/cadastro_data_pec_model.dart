import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cadastro_data_pec_widget.dart' show CadastroDataPecWidget;
import 'package:flutter/material.dart';

class CadastroDataPecModel extends FlutterFlowModel<CadastroDataPecWidget> {
  ///  Local state fields for this component.

  DateTime? dataselect;

  List<DocumentReference> datacriada = [];
  void addToDatacriada(DocumentReference item) => datacriada.add(item);
  void removeFromDatacriada(DocumentReference item) => datacriada.remove(item);
  void removeAtIndexFromDatacriada(int index) => datacriada.removeAt(index);
  void insertAtIndexInDatacriada(int index, DocumentReference item) =>
      datacriada.insert(index, item);
  void updateDatacriadaAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      datacriada[index] = updateFn(datacriada[index]);

  bool abrir = false;

  List<String> idsADD = [];
  void addToIdsADD(String item) => idsADD.add(item);
  void removeFromIdsADD(String item) => idsADD.remove(item);
  void removeAtIndexFromIdsADD(int index) => idsADD.removeAt(index);
  void insertAtIndexInIdsADD(int index, String item) =>
      idsADD.insert(index, item);
  void updateIdsADDAtIndex(int index, Function(String) updateFn) =>
      idsADD[index] = updateFn(idsADD[index]);

  DocumentReference? dataselectID;

  int? quantddTotal = 0;

  DateTime? finalizacaoVenda;

  DateTime? dataAnterior;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  DateTime? datePicked2;
  // State field(s) for CheckboxCupom widget.
  bool? checkboxCupomValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextFieldValorCupom widget.
  FocusNode? textFieldValorCupomFocusNode;
  TextEditingController? textFieldValorCupomTextController;
  String? Function(BuildContext, String?)?
      textFieldValorCupomTextControllerValidator;
  // State field(s) for TextFieldQuantCupom widget.
  FocusNode? textFieldQuantCupomFocusNode;
  TextEditingController? textFieldQuantCupomTextController;
  String? Function(BuildContext, String?)?
      textFieldQuantCupomTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? criacaoingressoOutro;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CupomRecord? cupomMaisUm;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DataRecord? criacaodataDuplica;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? criacaoingressoDuplica;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CupomRecord? cupomDuplica;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? criacaoingresTeia;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CupomRecord? cupomNewData;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DataRecord? criacaoPrimeiraData;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? criacaoPrimeiroIngresso;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CupomRecord? cupomPrimeiro;
  DateTime? datePicked3;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? addAvancaContemIngresso;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CupomRecord? cupomAvanca;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DataRecord? criacaodata;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? criacaoingressoo;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CupomRecord? cupomCriacao;

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

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    textFieldValorCupomFocusNode?.dispose();
    textFieldValorCupomTextController?.dispose();

    textFieldQuantCupomFocusNode?.dispose();
    textFieldQuantCupomTextController?.dispose();
  }
}
