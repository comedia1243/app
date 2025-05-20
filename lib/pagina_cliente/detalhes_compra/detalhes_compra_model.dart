import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detalhes_compra_widget.dart' show DetalhesCompraWidget;
import 'package:flutter/material.dart';

class DetalhesCompraModel extends FlutterFlowModel<DetalhesCompraWidget> {
  ///  Local state fields for this page.

  String? qrcode;

  String? copiaecola;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (QrCode PIX)] action in detalhesCompra widget.
  ApiCallResponse? qrcodepix;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
