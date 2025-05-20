import '/backend/backend.dart';
import '/detalhes_show/bordero/bordero_widget.dart';
import '/detalhes_show/bordero_check_in_m/bordero_check_in_m_widget.dart';
import '/detalhes_show/bordero_datas/bordero_datas_widget.dart';
import '/detalhes_show/detalhes_pequeno/detalhes_pequeno_widget.dart';
import '/detalhes_show/exportacoes/exportacoes_widget.dart';
import '/detalhes_show/historico/historico_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/local/detalhes_local/detalhes_local_widget.dart';
import '/pages/gerencial/menu_produtor/menu_produtor_widget.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import 'detalhes_show_widget.dart' show DetalhesShowWidget;
import 'package:flutter/material.dart';

class DetalhesShowModel extends FlutterFlowModel<DetalhesShowWidget> {
  ///  Local state fields for this page.

  DocumentReference? dataSelect;

  DateTime? selectDate;

  int? atual;

  int? total;

  int? atualGG;

  int? totalGG;

  int? quantdd;

  int? vendidos;

  double? valorTotal;

  double? valorRecebe;

  double? plataforma;

  String? publicado;

  bool? destaqueme = false;

  DocumentReference? docDestaque;

  LocalRecord? detalhesLocal;

  ///  State fields for stateful widgets in this page.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel;
  // Model for menu_produtor component.
  late MenuProdutorModel menuProdutorModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  List<VendaRecord>? mouseCopy;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  List<SelectIngressoRecord>? lololCopy;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  List<DataRecord>? data;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  List<VendaRecord>? selectGre;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  List<DataRecord>? dataslk;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  List<SelectIngressoRecord>? selll;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  ShowsDestaqueRecord? destaque;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  AnalyticsRecord? analitic;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  AnalyticsRecord? analiticGG;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  List<DataRecord>? mouse;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  List<SelectIngressoRecord>? lolol;
  DateTime? datePicked;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<DataRecord>();
  // Model for Bordero2.
  late BorderoModel bordero2Model;
  // Model for BorderoDatas component.
  late BorderoDatasModel borderoDatasModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<AvaliacoesRecord>();
  // Model for BorderoCheck-In5.
  late BorderoCheckInMModel borderoCheckIn5Model;
  // Model for exportacoes component.
  late ExportacoesModel exportacoesModel;
  // Model for Historico component.
  late HistoricoModel historicoModel;
  // Model for detalhesLocal component.
  late DetalhesLocalModel detalhesLocalModel;
  // Model for DetalhesPequeno component.
  late DetalhesPequenoModel detalhesPequenoModel;

  @override
  void initState(BuildContext context) {
    menuAdmModel = createModel(context, () => MenuAdmModel());
    menuProdutorModel = createModel(context, () => MenuProdutorModel());
    bordero2Model = createModel(context, () => BorderoModel());
    borderoDatasModel = createModel(context, () => BorderoDatasModel());
    borderoCheckIn5Model = createModel(context, () => BorderoCheckInMModel());
    exportacoesModel = createModel(context, () => ExportacoesModel());
    historicoModel = createModel(context, () => HistoricoModel());
    detalhesLocalModel = createModel(context, () => DetalhesLocalModel());
    detalhesPequenoModel = createModel(context, () => DetalhesPequenoModel());
  }

  @override
  void dispose() {
    menuAdmModel.dispose();
    menuProdutorModel.dispose();
    paginatedDataTableController1.dispose();
    bordero2Model.dispose();
    borderoDatasModel.dispose();
    paginatedDataTableController2.dispose();
    borderoCheckIn5Model.dispose();
    exportacoesModel.dispose();
    historicoModel.dispose();
    detalhesLocalModel.dispose();
    detalhesPequenoModel.dispose();
  }
}
