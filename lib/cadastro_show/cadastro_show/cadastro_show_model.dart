import '/cadastro_show/cadastro_data/cadastro_data_widget.dart';
import '/cadastro_show/cadastro_data_pec/cadastro_data_pec_widget.dart';
import '/cadastro_show/cadastro_info_basica/cadastro_info_basica_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/gerencial/menu_produtor/menu_produtor_widget.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import '/index.dart';
import 'cadastro_show_widget.dart' show CadastroShowWidget;
import 'package:flutter/material.dart';

class CadastroShowModel extends FlutterFlowModel<CadastroShowWidget> {
  ///  Local state fields for this page.

  bool abrirMenu = false;

  ///  State fields for stateful widgets in this page.

  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel1;
  // Model for menu_produtor component.
  late MenuProdutorModel menuProdutorModel1;
  // Model for cadastroInfoBasica component.
  late CadastroInfoBasicaModel cadastroInfoBasicaModel1;
  // Model for cadastroData component.
  late CadastroDataModel cadastroDataModel;
  // Model for cadastroInfoBasica component.
  late CadastroInfoBasicaModel cadastroInfoBasicaModel2;
  // Model for cadastroDataPec component.
  late CadastroDataPecModel cadastroDataPecModel;
  // Model for menu_adm component.
  late MenuAdmModel menuAdmModel2;
  // Model for menu_produtor component.
  late MenuProdutorModel menuProdutorModel2;

  @override
  void initState(BuildContext context) {
    menuAdmModel1 = createModel(context, () => MenuAdmModel());
    menuProdutorModel1 = createModel(context, () => MenuProdutorModel());
    cadastroInfoBasicaModel1 =
        createModel(context, () => CadastroInfoBasicaModel());
    cadastroDataModel = createModel(context, () => CadastroDataModel());
    cadastroInfoBasicaModel2 =
        createModel(context, () => CadastroInfoBasicaModel());
    cadastroDataPecModel = createModel(context, () => CadastroDataPecModel());
    menuAdmModel2 = createModel(context, () => MenuAdmModel());
    menuProdutorModel2 = createModel(context, () => MenuProdutorModel());
  }

  @override
  void dispose() {
    menuAdmModel1.dispose();
    menuProdutorModel1.dispose();
    cadastroInfoBasicaModel1.dispose();
    cadastroDataModel.dispose();
    cadastroInfoBasicaModel2.dispose();
    cadastroDataPecModel.dispose();
    menuAdmModel2.dispose();
    menuProdutorModel2.dispose();
  }
}
