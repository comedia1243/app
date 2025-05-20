import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/cabecalho/cabecalho_widget.dart';
import '/index.dart';
import 'areacliente_widget.dart' show AreaclienteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AreaclienteModel extends FlutterFlowModel<AreaclienteWidget> {
  ///  Local state fields for this page.

  List<ShowsRecord> shows = [];
  void addToShows(ShowsRecord item) => shows.add(item);
  void removeFromShows(ShowsRecord item) => shows.remove(item);
  void removeAtIndexFromShows(int index) => shows.removeAt(index);
  void insertAtIndexInShows(int index, ShowsRecord item) =>
      shows.insert(index, item);
  void updateShowsAtIndex(int index, Function(ShowsRecord) updateFn) =>
      shows[index] = updateFn(shows[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<VendaRecord>? list;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<VendaRecord>();
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;

  @override
  void initState(BuildContext context) {
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
    cabecalhoModel.dispose();
  }
}
