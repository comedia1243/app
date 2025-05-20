import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/cabecalho/cabecalho_widget.dart';
import '/reutilizavel/card_show/card_show_widget.dart';
import 'lista_shows_widget.dart' show ListaShowsWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ListaShowsModel extends FlutterFlowModel<ListaShowsWidget> {
  ///  Local state fields for this page.

  double? heightCards;

  DateTime? data;

  ///  State fields for stateful widgets in this page.

  // State field(s) for GridView widget.

  PagingController<DocumentSnapshot?, ShowsRecord>? gridViewPagingController;
  Query? gridViewPagingQuery;

  // Models for CardShow dynamic component.
  late FlutterFlowDynamicModels<CardShowModel> cardShowModels;
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;

  @override
  void initState(BuildContext context) {
    cardShowModels = FlutterFlowDynamicModels(() => CardShowModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    gridViewPagingController?.dispose();

    cardShowModels.dispose();
    cabecalhoModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, ShowsRecord> setGridViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    gridViewPagingController ??= _createGridViewController(query, parent);
    if (gridViewPagingQuery != query) {
      gridViewPagingQuery = query;
      gridViewPagingController?.refresh();
    }
    return gridViewPagingController!;
  }

  PagingController<DocumentSnapshot?, ShowsRecord> _createGridViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, ShowsRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryShowsRecordPage(
          queryBuilder: (_) => gridViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          controller: controller,
          pageSize: 12,
          isStream: false,
        ),
      );
  }
}
