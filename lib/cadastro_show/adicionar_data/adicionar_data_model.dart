import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'adicionar_data_widget.dart' show AdicionarDataWidget;
import 'package:flutter/material.dart';

class AdicionarDataModel extends FlutterFlowModel<AdicionarDataWidget> {
  ///  Local state fields for this component.

  DocumentReference? datacriada;

  List<DocumentReference> ingressos = [];
  void addToIngressos(DocumentReference item) => ingressos.add(item);
  void removeFromIngressos(DocumentReference item) => ingressos.remove(item);
  void removeAtIndexFromIngressos(int index) => ingressos.removeAt(index);
  void insertAtIndexInIngressos(int index, DocumentReference item) =>
      ingressos.insert(index, item);
  void updateIngressosAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      ingressos[index] = updateFn(ingressos[index]);

  int? quantddTotal;

  DateTime? finalizacaoVenda;

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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextFieldrrr widget.
  FocusNode? textFieldrrrFocusNode;
  TextEditingController? textFieldrrrTextController;
  String? Function(BuildContext, String?)? textFieldrrrTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  DateTime? datePicked;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  DataRecord? dataexiste2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? criacaoingresso;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DataRecord? adicionandoData;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? criareAddIngresso;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  DataRecord? dataexiste;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? criaIngressoConclui;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DataRecord? adicionandoDataConclui;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  IngressoRecord? criareAddIngressoCopy;

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

    textFieldrrrFocusNode?.dispose();
    textFieldrrrTextController?.dispose();
  }
}
