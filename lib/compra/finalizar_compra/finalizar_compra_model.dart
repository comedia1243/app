import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'finalizar_compra_widget.dart' show FinalizarCompraWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FinalizarCompraModel extends FlutterFlowModel<FinalizarCompraWidget> {
  ///  Local state fields for this page.

  String? qual;

  String? qrCode;

  String? copiaCola;

  int state = 1;

  SelectIngressoStruct? formSelect;
  void updateFormSelectStruct(Function(SelectIngressoStruct) updateFn) {
    updateFn(formSelect ??= SelectIngressoStruct());
  }

  int? numeroModificaIngresso;

  CupomRecord? cupom;

  bool carregando = false;

  String? idreferencia;

  bool cpfValido = false;

  double? valorCupom;

  int? atual;

  int? total;

  List<DocumentReference> refSelectIngresso = [];
  void addToRefSelectIngresso(DocumentReference item) =>
      refSelectIngresso.add(item);
  void removeFromRefSelectIngresso(DocumentReference item) =>
      refSelectIngresso.remove(item);
  void removeAtIndexFromRefSelectIngresso(int index) =>
      refSelectIngresso.removeAt(index);
  void insertAtIndexInRefSelectIngresso(int index, DocumentReference item) =>
      refSelectIngresso.insert(index, item);
  void updateRefSelectIngressoAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      refSelectIngresso[index] = updateFn(refSelectIngresso[index]);

  VendaRecord? venda;

  ParcelametoRecord? parcelamento;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 600000;
  int timerMilliseconds = 600000;
  String timerValue = StopWatchTimer.getDisplayTime(
    600000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Backend Call - API (Fluxo de Pagamento)] action in Text widget.
  ApiCallResponse? fluxoCartaoCopys;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse campo é obrigatório';
    }

    if (val.length < 3) {
      return 'Adicione um nome válido';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse campo é obrigatório';
    }

    if (val.length < 9) {
      return 'E-mail muito curto, revise e tente novamente';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Formato do E-mail inválido';
    }
    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  final textFieldMask3 = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  final textFieldMask4 = MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse campo é obrigatório';
    }

    if (val.length < 10) {
      return 'adicione um número válido';
    }

    return null;
  }

  // Stores action output result for [Custom Action - newCustomAction] action in Button widget.
  String? validaEmail;
  // Stores action output result for [Custom Action - validouCPF] action in Button widget.
  bool? validador;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Stores action output result for [Backend Call - API (Fluxo de Pagamento Copy)] action in Button widget.
  ApiCallResponse? fluxoParcelaV;
  // Stores action output result for [Backend Call - API (Fluxo de Pagamento)] action in Button widget.
  ApiCallResponse? fluxoCardV;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  VendaRecord? vendaCard;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SelectIngressoRecord? selectdoidsq;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ParcelametoRecord? parcela;
  // Stores action output result for [Backend Call - API (Fluxo de Pagamento Copy)] action in Button widget.
  ApiCallResponse? fluxoParcela;
  // Stores action output result for [Backend Call - API (Fluxo de Pagamento)] action in Button widget.
  ApiCallResponse? fluxoCard;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for CheckboxCupom widget.
  bool? checkboxCupomValue;
  // State field(s) for TextFieldCupom widget.
  FocusNode? textFieldCupomFocusNode;
  TextEditingController? textFieldCupomTextController;
  String? Function(BuildContext, String?)?
      textFieldCupomTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CupomRecord? cupomVenda;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for mesEano widget.
  FocusNode? mesEanoFocusNode;
  TextEditingController? mesEanoTextController;
  final mesEanoMask = MaskTextInputFormatter(mask: '##/##');
  String? Function(BuildContext, String?)? mesEanoTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for DropDownww widget.
  int? dropDownwwValue;
  FormFieldController<int>? dropDownwwValueController;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController4Validator = _textController4Validator;
  }

  @override
  void dispose() {
    timerController.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldCupomFocusNode?.dispose();
    textFieldCupomTextController?.dispose();

    textFieldFocusNode5?.dispose();
    textController6?.dispose();

    textFieldFocusNode6?.dispose();
    textController7?.dispose();

    mesEanoFocusNode?.dispose();
    mesEanoTextController?.dispose();

    textFieldFocusNode7?.dispose();
    textController9?.dispose();
  }
}
