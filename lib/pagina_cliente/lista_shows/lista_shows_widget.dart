import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/cabecalho/cabecalho_widget.dart';
import '/reutilizavel/card_show/card_show_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'lista_shows_model.dart';
export 'lista_shows_model.dart';

class ListaShowsWidget extends StatefulWidget {
  const ListaShowsWidget({super.key});

  static String routeName = 'listaShows';
  static String routePath = 'listaShows';

  @override
  State<ListaShowsWidget> createState() => _ListaShowsWidgetState();
}

class _ListaShowsWidgetState extends State<ListaShowsWidget> {
  late ListaShowsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaShowsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'listaShows'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LISTA_SHOWS_listaShows_ON_INIT_STATE');
      if (MediaQuery.sizeOf(context).width < 460.0) {
        logFirebaseEvent('listaShows_update_page_state');
        _model.heightCards = 0.78;
        safeSetState(() {});
      } else {
        if ((MediaQuery.sizeOf(context).width >= 460.0) &&
            (MediaQuery.sizeOf(context).width < 720.0)) {
          logFirebaseEvent('listaShows_update_page_state');
          _model.heightCards = 0.75;
          safeSetState(() {});
        } else {
          logFirebaseEvent('listaShows_update_page_state');
          _model.heightCards = 0.70;
          safeSetState(() {});
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Comédia Ingressos',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        constraints: BoxConstraints(
                                          maxWidth: 1080.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: Text(
                                                '\"Transformando risadas em memórias inesquecíveis\" - Comédia Ingressos',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                    ),
                                              ),
                                            ),
                                            FutureBuilder<List<DataRecord>>(
                                              future: queryDataRecordOnce(
                                                queryBuilder: (dataRecord) =>
                                                    dataRecord.where(
                                                  'status',
                                                  isEqualTo: 'Ativo',
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<DataRecord>
                                                    comPesquisaaDataRecordList =
                                                    snapshot.data!;

                                                return Container(
                                                  decoration: BoxDecoration(),
                                                  child: PagedGridView<
                                                      DocumentSnapshot<
                                                          Object?>?,
                                                      ShowsRecord>(
                                                    pagingController: _model
                                                        .setGridViewController(
                                                      ShowsRecord.collection
                                                          .where(
                                                        'status',
                                                        isEqualTo: 'Ativo',
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.zero,
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            460.0) {
                                                          return 1;
                                                        } else if ((MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width >=
                                                                460.0) &&
                                                            (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                720.0)) {
                                                          return 2;
                                                        } else if ((MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width >=
                                                                720.0) &&
                                                            (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                1080.0)) {
                                                          return 3;
                                                        } else {
                                                          return 4;
                                                        }
                                                      }(),
                                                      crossAxisSpacing: 10.0,
                                                      mainAxisSpacing: 10.0,
                                                      childAspectRatio:
                                                          valueOrDefault<
                                                              double>(
                                                        _model.heightCards,
                                                        70.0,
                                                      ),
                                                    ),
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    builderDelegate:
                                                        PagedChildBuilderDelegate<
                                                            ShowsRecord>(
                                                      // Customize what your widget looks like when it's loading the first page.
                                                      firstPageProgressIndicatorBuilder:
                                                          (_) => Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      // Customize what your widget looks like when it's loading another page.
                                                      newPageProgressIndicatorBuilder:
                                                          (_) => Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      ),

                                                      itemBuilder: (context, _,
                                                          gridViewIndex) {
                                                        final gridViewShowsRecord =
                                                            _model.gridViewPagingController!
                                                                    .itemList![
                                                                gridViewIndex];
                                                        return wrapWithModel(
                                                          model: _model
                                                              .cardShowModels
                                                              .getModel(
                                                            gridViewShowsRecord
                                                                .reference.id,
                                                            gridViewIndex,
                                                          ),
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: CardShowWidget(
                                                            key: Key(
                                                              'Keyhd3_${gridViewShowsRecord.reference.id}',
                                                            ),
                                                            show:
                                                                gridViewShowsRecord,
                                                            datas: comPesquisaaDataRecordList
                                                                .where((e) =>
                                                                    e.show ==
                                                                    gridViewShowsRecord
                                                                        .reference)
                                                                .toList(),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 24.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.cabecalhoModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CabecalhoWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
