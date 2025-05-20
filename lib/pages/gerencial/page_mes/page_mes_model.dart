import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'page_mes_widget.dart' show PageMesWidget;
import 'package:flutter/material.dart';

class PageMesModel extends FlutterFlowModel<PageMesWidget> {
  ///  Local state fields for this page.

  int state = 1;

  List<VendaRecord> vendasDia = [];
  void addToVendasDia(VendaRecord item) => vendasDia.add(item);
  void removeFromVendasDia(VendaRecord item) => vendasDia.remove(item);
  void removeAtIndexFromVendasDia(int index) => vendasDia.removeAt(index);
  void insertAtIndexInVendasDia(int index, VendaRecord item) =>
      vendasDia.insert(index, item);
  void updateVendasDiaAtIndex(int index, Function(VendaRecord) updateFn) =>
      vendasDia[index] = updateFn(vendasDia[index]);

  DateTime? dia;

  List<DataRecord> todasAsDatas = [];
  void addToTodasAsDatas(DataRecord item) => todasAsDatas.add(item);
  void removeFromTodasAsDatas(DataRecord item) => todasAsDatas.remove(item);
  void removeAtIndexFromTodasAsDatas(int index) => todasAsDatas.removeAt(index);
  void insertAtIndexInTodasAsDatas(int index, DataRecord item) =>
      todasAsDatas.insert(index, item);
  void updateTodasAsDatasAtIndex(int index, Function(DataRecord) updateFn) =>
      todasAsDatas[index] = updateFn(todasAsDatas[index]);

  List<DateTime> diasSelecionados = [];
  void addToDiasSelecionados(DateTime item) => diasSelecionados.add(item);
  void removeFromDiasSelecionados(DateTime item) =>
      diasSelecionados.remove(item);
  void removeAtIndexFromDiasSelecionados(int index) =>
      diasSelecionados.removeAt(index);
  void insertAtIndexInDiasSelecionados(int index, DateTime item) =>
      diasSelecionados.insert(index, item);
  void updateDiasSelecionadosAtIndex(int index, Function(DateTime) updateFn) =>
      diasSelecionados[index] = updateFn(diasSelecionados[index]);

  List<DataRecord> datasVisualiza = [];
  void addToDatasVisualiza(DataRecord item) => datasVisualiza.add(item);
  void removeFromDatasVisualiza(DataRecord item) => datasVisualiza.remove(item);
  void removeAtIndexFromDatasVisualiza(int index) =>
      datasVisualiza.removeAt(index);
  void insertAtIndexInDatasVisualiza(int index, DataRecord item) =>
      datasVisualiza.insert(index, item);
  void updateDatasVisualizaAtIndex(int index, Function(DataRecord) updateFn) =>
      datasVisualiza[index] = updateFn(datasVisualiza[index]);

  int? atual;

  int? total;

  List<DocumentReference> locais = [];
  void addToLocais(DocumentReference item) => locais.add(item);
  void removeFromLocais(DocumentReference item) => locais.remove(item);
  void removeAtIndexFromLocais(int index) => locais.removeAt(index);
  void insertAtIndexInLocais(int index, DocumentReference item) =>
      locais.insert(index, item);
  void updateLocaisAtIndex(int index, Function(DocumentReference) updateFn) =>
      locais[index] = updateFn(locais[index]);

  LocalRecord? localSelect;

  List<DataRecord> tabelaData = [];
  void addToTabelaData(DataRecord item) => tabelaData.add(item);
  void removeFromTabelaData(DataRecord item) => tabelaData.remove(item);
  void removeAtIndexFromTabelaData(int index) => tabelaData.removeAt(index);
  void insertAtIndexInTabelaData(int index, DataRecord item) =>
      tabelaData.insert(index, item);
  void updateTabelaDataAtIndex(int index, Function(DataRecord) updateFn) =>
      tabelaData[index] = updateFn(tabelaData[index]);

  List<ShowsRecord> shows = [];
  void addToShows(ShowsRecord item) => shows.add(item);
  void removeFromShows(ShowsRecord item) => shows.remove(item);
  void removeAtIndexFromShows(int index) => shows.removeAt(index);
  void insertAtIndexInShows(int index, ShowsRecord item) =>
      shows.insert(index, item);
  void updateShowsAtIndex(int index, Function(ShowsRecord) updateFn) =>
      shows[index] = updateFn(shows[index]);

  List<ShowsRecord> showsVisualiza = [];
  void addToShowsVisualiza(ShowsRecord item) => showsVisualiza.add(item);
  void removeFromShowsVisualiza(ShowsRecord item) =>
      showsVisualiza.remove(item);
  void removeAtIndexFromShowsVisualiza(int index) =>
      showsVisualiza.removeAt(index);
  void insertAtIndexInShowsVisualiza(int index, ShowsRecord item) =>
      showsVisualiza.insert(index, item);
  void updateShowsVisualizaAtIndex(int index, Function(ShowsRecord) updateFn) =>
      showsVisualiza[index] = updateFn(showsVisualiza[index]);

  ShowsRecord? showVenda;

  DataRecord? dataSelectShowVenda;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in pageMes widget.
  List<DataRecord>? datas;
  // Stores action output result for [Firestore Query - Query a collection] action in pageMes widget.
  List<ShowsRecord>? todoShow;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
