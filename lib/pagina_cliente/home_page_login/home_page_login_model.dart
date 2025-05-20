import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/card_show/card_show_widget.dart';
import '/reutilizavel/rodape/rodape_widget.dart';
import '/index.dart';
import 'home_page_login_widget.dart' show HomePageLoginWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageLoginModel extends FlutterFlowModel<HomePageLoginWidget> {
  ///  Local state fields for this page.

  double? heightCards;

  bool menuAberto = false;

  int? atual;

  int? total;

  DateTime? dsaaa;

  DateTime? base;

  int? atualQQ;

  int? totalQQ;

  int? atualYY;

  int? totalYY;

  List<String> txt = [];
  void addToTxt(String item) => txt.add(item);
  void removeFromTxt(String item) => txt.remove(item);
  void removeAtIndexFromTxt(int index) => txt.removeAt(index);
  void insertAtIndexInTxt(int index, String item) => txt.insert(index, item);
  void updateTxtAtIndex(int index, Function(String) updateFn) =>
      txt[index] = updateFn(txt[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked;
  // Models for CardShow dynamic component.
  late FlutterFlowDynamicModels<CardShowModel> cardShowModels;
  // Model for rodape component.
  late RodapeModel rodapeModel;

  @override
  void initState(BuildContext context) {
    cardShowModels = FlutterFlowDynamicModels(() => CardShowModel());
    rodapeModel = createModel(context, () => RodapeModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    cardShowModels.dispose();
    rodapeModel.dispose();
  }
}
