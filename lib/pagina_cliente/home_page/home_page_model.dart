import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/cabecalho/cabecalho_widget.dart';
import '/reutilizavel/rodape/rodape_widget.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  double? heightCards;

  int? atual;

  int? total;

  DateTime? daaa;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for rodape component.
  late RodapeModel rodapeModel;
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;

  @override
  void initState(BuildContext context) {
    rodapeModel = createModel(context, () => RodapeModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    rodapeModel.dispose();
    cabecalhoModel.dispose();
  }
}
