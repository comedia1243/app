import '/backend/backend.dart';
import '/compra/compra_ingressos/compra_ingressos_widget.dart';
import '/compra/datas_venda/datas_venda_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/reutilizavel/cabecalho/cabecalho_widget.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'compra_model.dart';
export 'compra_model.dart';

class CompraWidget extends StatefulWidget {
  const CompraWidget({
    super.key,
    required this.show,
  });

  final String? show;

  static String routeName = 'compra';
  static String routePath = 'compra';

  @override
  State<CompraWidget> createState() => _CompraWidgetState();
}

class _CompraWidgetState extends State<CompraWidget> {
  late CompraModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompraModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'compra'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('COMPRA_PAGE_compra_ON_INIT_STATE');
      if ((FFAppState().showVisualiza != null) &&
          (FFAppState().showVisualiza.slug == widget.show)) {
        if (!((FFAppState().dataSelectNew != null) &&
            (FFAppState().dataSelectNew.show ==
                FFAppState().showVisualiza.docReferencia))) {
          logFirebaseEvent('compra_firestore_query');
          _model.data = await queryDataRecordOnce(
            queryBuilder: (dataRecord) => dataRecord
                .where(
                  'status',
                  isEqualTo: 'Ativo',
                )
                .where(
                  'show',
                  isEqualTo: FFAppState().showVisualiza.docReferencia,
                )
                .orderBy('data'),
            singleRecord: true,
          ).then((s) => s.firstOrNull);
          logFirebaseEvent('compra_update_app_state');
          FFAppState().dataDetalhes = _model.data?.reference;
          FFAppState().dataSelectNew = DataStruct(
            date: _model.data?.data,
            referencia: _model.data?.reference,
            show: _model.data?.show,
            identificador: _model.data?.id,
          );
          FFAppState().update(() {});
        }
      } else {
        logFirebaseEvent('compra_firestore_query');
        _model.sheemi = await queryShowsRecordOnce(
          queryBuilder: (showsRecord) => showsRecord.where(
            'slug',
            isEqualTo: widget.show,
          ),
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        logFirebaseEvent('compra_update_app_state');
        FFAppState().showVisualiza = ClienteShowStruct(
          nome: _model.sheemi?.nome,
          sinopse: _model.sheemi?.sinopse,
          foto: _model.sheemi?.foto,
          tarja: _model.sheemi?.tarja,
          faxaEtaria: _model.sheemi?.faxaEtaria,
          id: _model.sheemi?.id,
          datasID: _model.sheemi?.datasID,
          informacao: _model.sheemi?.informacao,
          docReferencia: _model.sheemi?.reference,
          local: _model.sheemi?.local,
          dataCriacao: _model.sheemi?.dataCriacao,
          mediaAvaliacao: _model.sheemi?.mediaAvaliacao,
          maiorDesconto: _model.sheemi?.maiorDesconto,
          produtores: _model.sheemi?.produtores,
          valorReceber: _model.sheemi?.valorReceber,
          quantidadeVendida: _model.sheemi?.quantidadeVendida,
          valorTotal: _model.sheemi?.valorTotal,
          visualizacoes: _model.sheemi?.visualizacoes,
          fotoCasa: _model.sheemi?.fotoCasa,
          proximaData: _model.sheemi?.proximaData,
          proximaDataText: _model.sheemi?.proximaDataText,
          txtFtMapa: _model.sheemi?.txtFtMapa,
          criador: _model.sheemi?.criador,
          slug: _model.sheemi?.slug,
          avaliacoes: _model.sheemi?.avaliacoes,
          datasText: _model.sheemi?.datasText,
          identificador: _model.sheemi?.identificador,
          oculto: _model.sheemi?.oculto,
          status: _model.sheemi?.status,
        );
        FFAppState().update(() {});
        logFirebaseEvent('compra_firestore_query');
        _model.data2 = await queryDataRecordOnce(
          queryBuilder: (dataRecord) => dataRecord
              .where(
                'status',
                isEqualTo: 'Ativo',
              )
              .where(
                'show',
                isEqualTo: FFAppState().showVisualiza.docReferencia,
              )
              .orderBy('data'),
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        logFirebaseEvent('compra_update_app_state');
        FFAppState().dataDetalhes = _model.data2?.reference;
        FFAppState().dataSelectNew = DataStruct(
          date: _model.data2?.data,
          referencia: _model.data2?.reference,
          show: _model.data2?.show,
          identificador: _model.data2?.id,
        );
        safeSetState(() {});
        logFirebaseEvent('compra_backend_call');

        await _model.sheemi!.reference.update({
          ...mapToFirestore(
            {
              'visualizacoes': FieldValue.increment(1),
            },
          ),
        });
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
    context.watch<FFAppState>();

    return StreamBuilder<List<ShowsRecord>>(
      stream: queryShowsRecord(
        queryBuilder: (showsRecord) => showsRecord.where(
          'slug',
          isEqualTo: widget.show,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ShowsRecord> compraShowsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final compraShowsRecord = compraShowsRecordList.isNotEmpty
            ? compraShowsRecordList.first
            : null;

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
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 100.0, 0.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 24.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  compraShowsRecord!.foto,
                                                  width: 300.0,
                                                  height: 297.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Selecione uma data',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.datasVendaModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DatasVendaWidget(
                                          show: compraShowsRecord,
                                        ),
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 1080.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              child: wrapWithModel(
                                                model:
                                                    _model.compraIngressosModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CompraIngressosWidget(
                                                  show: compraShowsRecord
                                                      .reference,
                                                ),
                                              ),
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                            ))
                                              Expanded(
                                                child: Container(
                                                  width: double.infinity,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 500.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (compraShowsRecord
                                                                  .fotoCasa !=
                                                              '')
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            compraShowsRecord
                                                                .fotoCasa,
                                                            width: 300.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      if (compraShowsRecord
                                                                  .fotoCasa ==
                                                              '')
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/Imagem_do_WhatsApp_de_2024-07-24_(s)_15.48.47_270cdea9.jpg',
                                                            width: 300.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Text(
                                                          compraShowsRecord
                                                                          .txtFtMapa !=
                                                                      ''
                                                              ? compraShowsRecord
                                                                  .txtFtMapa
                                                              : 'Este local não disponibiliza lugares marcados, lugares por ordem de chegada!',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 22.0)),
                                                  ),
                                                ),
                                              ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/comedia8png.png',
                                          height: 80.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      FlutterFlowWebView(
                                        content:
                                            'https://comediaingressos.com.br/compra?show=${widget.show}',
                                        height: 10.0,
                                        verticalScroll: false,
                                        horizontalScroll: false,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Text(
                                              '2024 - TODOS OS DIREITOS RESERVADOS - COMEDIA INGRESSOS LTDA - CNPJ - 54.885.291/0001-71',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 22.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
            ));
      },
    );
  }
}
