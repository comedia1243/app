import '/detalhes_show/bordero/bordero_widget.dart';
import '/detalhes_show/bordero_check_in_p/bordero_check_in_p_widget.dart';
import '/detalhes_show/datas_pequeno_del/datas_pequeno_del_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhes_pequeno_widget.dart' show DetalhesPequenoWidget;
import 'package:flutter/material.dart';

class DetalhesPequenoModel extends FlutterFlowModel<DetalhesPequenoWidget> {
  ///  Local state fields for this component.

  DocumentReference? vendaCheck;

  DocumentReference? dataSel;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked;
  // Model for Bordero2.
  late BorderoModel bordero2Model;
  // Model for BorderoCheck-InP component.
  late BorderoCheckInPModel borderoCheckInPModel;
  // Model for DatasPequenoDel component.
  late DatasPequenoDelModel datasPequenoDelModel;

  @override
  void initState(BuildContext context) {
    bordero2Model = createModel(context, () => BorderoModel());
    borderoCheckInPModel = createModel(context, () => BorderoCheckInPModel());
    datasPequenoDelModel = createModel(context, () => DatasPequenoDelModel());
  }

  @override
  void dispose() {
    bordero2Model.dispose();
    borderoCheckInPModel.dispose();
    datasPequenoDelModel.dispose();
  }
}
