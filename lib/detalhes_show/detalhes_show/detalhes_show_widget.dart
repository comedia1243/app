import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/cadastro_show/adicionar_data/adicionar_data_widget.dart';
import '/components/delet_widget.dart';
import '/detalhes_show/add_avaliacao/add_avaliacao_widget.dart';
import '/detalhes_show/add_google_manager/add_google_manager_widget.dart';
import '/detalhes_show/add_pixel/add_pixel_widget.dart';
import '/detalhes_show/bordero/bordero_widget.dart';
import '/detalhes_show/bordero_check_in_m/bordero_check_in_m_widget.dart';
import '/detalhes_show/bordero_datas/bordero_datas_widget.dart';
import '/detalhes_show/detalhes_pequeno/detalhes_pequeno_widget.dart';
import '/detalhes_show/edit_google_manager/edit_google_manager_widget.dart';
import '/detalhes_show/edit_pixel/edit_pixel_widget.dart';
import '/detalhes_show/exportacoes/exportacoes_widget.dart';
import '/detalhes_show/historico/historico_widget.dart';
import '/detalhes_show/pontinhos_show/pontinhos_show_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/local/detalhes_local/detalhes_local_widget.dart';
import '/pages/gerencial/menu_produtor/menu_produtor_widget.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'detalhes_show_model.dart';
export 'detalhes_show_model.dart';

class DetalhesShowWidget extends StatefulWidget {
  const DetalhesShowWidget({
    super.key,
    required this.show,
    required this.ref,
  });

  final ShowsRecord? show;
  final DocumentReference? ref;

  static String routeName = 'detalhesShow';
  static String routePath = 'detalhesShow';

  @override
  State<DetalhesShowWidget> createState() => _DetalhesShowWidgetState();
}

class _DetalhesShowWidgetState extends State<DetalhesShowWidget> {
  late DetalhesShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalhesShowModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'detalhesShow'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DETALHES_SHOW_detalhesShow_ON_INIT_STATE');
      logFirebaseEvent('detalhesShow_update_page_state');
      _model.publicado = widget.show?.status;
      _model.destaqueme = widget.show?.destaque;
      safeSetState(() {});
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

    return StreamBuilder<List<DataRecord>>(
      stream: queryDataRecord(
        queryBuilder: (dataRecord) => dataRecord.where(
          'show',
          isEqualTo: widget.show?.reference,
        ),
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
        List<DataRecord> detalhesShowDataRecordList = snapshot.data!;

        return Title(
            title: 'detalhesShow',
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
                  child: FutureBuilder<List<VendaRecord>>(
                    future: queryVendaRecordOnce(
                      queryBuilder: (vendaRecord) => vendaRecord
                          .where(
                            'show',
                            isEqualTo: widget.show?.reference,
                          )
                          .where(
                            'status',
                            isEqualTo: 'Aprovado',
                          )
                          .where(
                            'dataEvento',
                            isGreaterThanOrEqualTo: getCurrentTimestamp,
                          ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<VendaRecord> containerVendaRecordList =
                          snapshot.data!;

                      return Container(
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (((valueOrDefault(
                                            currentUserDocument?.nivelAcesso,
                                            '') ==
                                        'Administrador') &&
                                    (MediaQuery.sizeOf(context).width >=
                                        1080.0)) &&
                                responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                              AuthUserStreamWidget(
                                builder: (context) => wrapWithModel(
                                  model: _model.menuAdmModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuAdmWidget(),
                                ),
                              ),
                            if ((valueOrDefault(
                                        currentUserDocument?.nivelAcesso, '') ==
                                    'Produtor') &&
                                (MediaQuery.sizeOf(context).width >= 1080.0))
                              AuthUserStreamWidget(
                                builder: (context) => wrapWithModel(
                                  model: _model.menuProdutorModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuProdutorWidget(),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                            ))
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 16.0, 0.0),
                                  child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x19000000),
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'DETALHES_SHOW_PAGE_Icon_f05lbzje_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Icon_navigate_back');
                                                            context.safePop();
                                                          },
                                                          child: Icon(
                                                            Icons.arrow_back,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 32.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            widget.show?.nome,
                                                            'nome',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
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
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Visibility(
                                                          visible:
                                                              responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'DETALHES_SHOW_Button_14tn5oah_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_alert_dialog');
                                                                  var confirmDialogResponse =
                                                                      await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return WebViewAware(
                                                                                child: AlertDialog(
                                                                                  title: Text('Atenção'),
                                                                                  content: Text('Essa ação muda apenas o status do show. Caso a data esteja vencida dará erro.'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                      child: Text('Cancelar'),
                                                                                    ),
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                      child: Text('Confirmar'),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                  if (confirmDialogResponse) {
                                                                    if (_model
                                                                            .publicado !=
                                                                        'Ativo') {
                                                                      if (detalhesShowDataRecordList
                                                                              .length >=
                                                                          1) {
                                                                        logFirebaseEvent(
                                                                            'Button_update_page_state');
                                                                        _model.publicado =
                                                                            'Ativo';
                                                                        safeSetState(
                                                                            () {});
                                                                        logFirebaseEvent(
                                                                            'Button_backend_call');

                                                                        await widget
                                                                            .show!
                                                                            .reference
                                                                            .update(createShowsRecordData(
                                                                          status:
                                                                              'Ativo',
                                                                        ));
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'Button_alert_dialog');
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return WebViewAware(
                                                                              child: AlertDialog(
                                                                                title: Text('Erro!'),
                                                                                content: Text('Adicione uma data para publicar seu Evento.'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                    child: Text('Ok'),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      }
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Button_update_page_state');
                                                                      _model.publicado =
                                                                          'expired';
                                                                      safeSetState(
                                                                          () {});
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');

                                                                      await widget
                                                                          .show!
                                                                          .reference
                                                                          .update(
                                                                              createShowsRecordData(
                                                                        status:
                                                                            'expired',
                                                                      ));
                                                                    }
                                                                  }
                                                                },
                                                                text:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  _model.publicado !=
                                                                          'Ativo'
                                                                      ? 'PUBLICAR'
                                                                      : 'DESPUBLICAR',
                                                                  'PUBLICAR',
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 35.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: _model
                                                                              .publicado !=
                                                                          'Ativo'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .corMenu
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: _model.publicado !=
                                                                                'Ativo'
                                                                            ? FlutterFlowTheme.of(context).secondaryBackground
                                                                            : FlutterFlowTheme.of(context).corMenu,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .corMenu,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24.0),
                                                                ),
                                                              ),
                                                              FlutterFlowIconButton(
                                                                borderRadius:
                                                                    8.0,
                                                                buttonSize:
                                                                    35.0,
                                                                fillColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .corMenu,
                                                                icon: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .ellipsisV,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  size: 18.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'DETALHES_SHOW_PAGE_ellipsisV_ICN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'IconButton_bottom_sheet');
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(context).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                PontinhosShowWidget(
                                                                              show: widget.show!,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              if (FFAppState()
                                                                      .telaDetalhes !=
                                                                  1)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_7qfz6vzh_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 1;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Visão Geral',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .telaDetalhes ==
                                                                  1)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_32rak849_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 1;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Visão Geral',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .telaDetalhes !=
                                                                  2)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_u4sv3689_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 2;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Borderô',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .telaDetalhes ==
                                                                  2)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_n38fht2a_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 2;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Borderô',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .telaDetalhes !=
                                                                  3)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_9xaeviza_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_page_state');
                                                                    _model.dataSelect = detalhesShowDataRecordList
                                                                        .where((e) =>
                                                                            (e.data! >=
                                                                                getCurrentTimestamp) &&
                                                                            (e.status ==
                                                                                'Ativo'))
                                                                        .toList()
                                                                        .firstOrNull
                                                                        ?.reference;
                                                                    safeSetState(
                                                                        () {});
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 3;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Datas',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .telaDetalhes ==
                                                                  3)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_tnt9hx26_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 3;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Datas',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .telaDetalhes !=
                                                                  5)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_b3tjilrh_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 5;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Check-In',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .telaDetalhes ==
                                                                  5)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_v1bf4qp0_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 5;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Check-In',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .telaDetalhes !=
                                                                  6)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_b9hi94s9_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 6;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Exportação',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .telaDetalhes ==
                                                                  6)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_1qmzjk91_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 6;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Exportação',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .telaDetalhes !=
                                                                  7)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_w25xjy3n_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 7;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Histórico',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .telaDetalhes ==
                                                                  7)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_PAGE_Text_3ek37t0e_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Text_update_app_state');
                                                                    FFAppState()
                                                                        .telaDetalhes = 7;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Histórico',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                            ].divide(SizedBox(
                                                                width: 24.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 16.0)),
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().telaDetalhes == 1)
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DETALHES_SHOW_PAGE_Text_9t2fh2ru_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Text_update_page_state');
                                                                _model.atual =
                                                                    0;
                                                                _model.total =
                                                                    detalhesShowDataRecordList
                                                                        .length;
                                                                safeSetState(
                                                                    () {});
                                                                while (_model
                                                                        .atual! <
                                                                    _model
                                                                        .total!) {
                                                                  logFirebaseEvent(
                                                                      'Text_backend_call');

                                                                  await detalhesShowDataRecordList
                                                                      .elementAtOrNull(
                                                                          _model
                                                                              .atual!)!
                                                                      .reference
                                                                      .update(
                                                                          createDataRecordData(
                                                                        local: widget
                                                                            .show
                                                                            ?.local,
                                                                      ));
                                                                  logFirebaseEvent(
                                                                      'Text_update_page_state');
                                                                  _model.atual =
                                                                      _model.atual! +
                                                                          1;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                                logFirebaseEvent(
                                                                    'Text_alert_dialog');
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          AlertDialog(
                                                                        content:
                                                                            Text('jtjftjft'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                              child: Text(
                                                                'Vendas Hoje',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      fontSize:
                                                                          14.0,
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
                                                            StreamBuilder<
                                                                List<
                                                                    VendaRecord>>(
                                                              stream:
                                                                  queryVendaRecord(
                                                                queryBuilder: (vendaRecord) =>
                                                                    vendaRecord
                                                                        .where(
                                                                          'show',
                                                                          isEqualTo: widget
                                                                              .show
                                                                              ?.reference,
                                                                        )
                                                                        .where(
                                                                          'status',
                                                                          isEqualTo:
                                                                              'Aprovado',
                                                                        )
                                                                        .where(
                                                                          'dataCriacao',
                                                                          isGreaterThanOrEqualTo: functions
                                                                              .datasHoje()
                                                                              ?.firstOrNull,
                                                                        )
                                                                        .where(
                                                                          'dataCriacao',
                                                                          isLessThanOrEqualTo: functions
                                                                              .datasHoje()
                                                                              ?.lastOrNull,
                                                                        ),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<VendaRecord>
                                                                    textVendaRecordList =
                                                                    snapshot
                                                                        .data!;

                                                                return Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    functions
                                                                        .somaInteiros(textVendaRecordList
                                                                            .map((e) =>
                                                                                e.quantdd)
                                                                            .toList())
                                                                        .toString(),
                                                                    '0',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            28.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                );
                                                              },
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 8.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DETALHES_SHOW_PAGE_Text_8zjsevhg_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Text_firestore_query');
                                                                _model.mouseCopy =
                                                                    await queryVendaRecordOnce(
                                                                  queryBuilder: (vendaRecord) =>
                                                                      vendaRecord
                                                                          .where(
                                                                            'show',
                                                                            isEqualTo:
                                                                                widget.show?.reference,
                                                                          )
                                                                          .where(
                                                                            'status',
                                                                            isEqualTo:
                                                                                'Aprovado',
                                                                          ),
                                                                );
                                                                logFirebaseEvent(
                                                                    'Text_update_page_state');
                                                                _model.atual =
                                                                    0;
                                                                _model.total =
                                                                    _model
                                                                        .mouseCopy
                                                                        ?.length;
                                                                _model.quantdd =
                                                                    0;
                                                                safeSetState(
                                                                    () {});
                                                                while (_model
                                                                        .atual! <
                                                                    _model
                                                                        .total!) {
                                                                  logFirebaseEvent(
                                                                      'Text_firestore_query');
                                                                  _model.lololCopy =
                                                                      await querySelectIngressoRecordOnce(
                                                                    queryBuilder: (selectIngressoRecord) =>
                                                                        selectIngressoRecord
                                                                            .where(
                                                                              'salvo',
                                                                              isEqualTo: true,
                                                                            )
                                                                            .where(
                                                                              'venda',
                                                                              isEqualTo: _model.mouseCopy?.elementAtOrNull(_model.atual!)?.reference,
                                                                            ),
                                                                  );
                                                                  logFirebaseEvent(
                                                                      'Text_update_page_state');
                                                                  _model.atualGG =
                                                                      0;
                                                                  _model.totalGG = _model
                                                                      .lololCopy
                                                                      ?.length;
                                                                  _model.quantdd =
                                                                      0;
                                                                  safeSetState(
                                                                      () {});
                                                                  while (_model
                                                                          .atualGG! <
                                                                      _model
                                                                          .totalGG!) {
                                                                    logFirebaseEvent(
                                                                        'Text_update_page_state');
                                                                    _model
                                                                        .quantdd = (_model
                                                                            .quantdd!) +
                                                                        _model
                                                                            .lololCopy!
                                                                            .elementAtOrNull(_model.atualGG!)!
                                                                            .quantdd;
                                                                    safeSetState(
                                                                        () {});
                                                                    logFirebaseEvent(
                                                                        'Text_update_page_state');
                                                                    _model.atualGG =
                                                                        _model.atualGG! +
                                                                            1;
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                  logFirebaseEvent(
                                                                      'Text_wait__delay');
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500));
                                                                  logFirebaseEvent(
                                                                      'Text_backend_call');

                                                                  await _model
                                                                      .mouseCopy!
                                                                      .elementAtOrNull(
                                                                          _model
                                                                              .atual!)!
                                                                      .reference
                                                                      .update(
                                                                          createVendaRecordData(
                                                                        quantdd:
                                                                            _model.quantdd,
                                                                      ));
                                                                  logFirebaseEvent(
                                                                      'Text_wait__delay');
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              1000));
                                                                  logFirebaseEvent(
                                                                      'Text_update_page_state');
                                                                  _model.atual =
                                                                      _model.atual! +
                                                                          1;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                                logFirebaseEvent(
                                                                    'Text_alert_dialog');
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          AlertDialog(
                                                                        title: Text(
                                                                            'yyyyyyyyyyyy'),
                                                                        content:
                                                                            Text('ggggggggggg'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                );

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Text(
                                                                'Ingressos Vendidos',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      fontSize:
                                                                          14.0,
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
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DETALHES_SHOW_PAGE_Text_eku3wmup_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Text_firestore_query');
                                                                _model.data =
                                                                    await queryDataRecordOnce(
                                                                  queryBuilder:
                                                                      (dataRecord) =>
                                                                          dataRecord
                                                                              .where(
                                                                    'show',
                                                                    isEqualTo:
                                                                        widget
                                                                            .show
                                                                            ?.reference,
                                                                  ),
                                                                );
                                                                logFirebaseEvent(
                                                                    'Text_update_page_state');
                                                                _model.atual =
                                                                    0;
                                                                _model.total =
                                                                    _model.data
                                                                        ?.length;
                                                                safeSetState(
                                                                    () {});
                                                                while (_model
                                                                        .atual! <
                                                                    _model
                                                                        .total!) {
                                                                  logFirebaseEvent(
                                                                      'Text_firestore_query');
                                                                  _model.selectGre =
                                                                      await queryVendaRecordOnce(
                                                                    queryBuilder: (vendaRecord) =>
                                                                        vendaRecord
                                                                            .where(
                                                                              'status',
                                                                              isEqualTo: 'Aprovado',
                                                                            )
                                                                            .where(
                                                                              'show',
                                                                              isEqualTo: widget.show?.reference,
                                                                            )
                                                                            .where(
                                                                              'data_show',
                                                                              isEqualTo: _model.data?.elementAtOrNull(_model.atual!)?.reference,
                                                                            ),
                                                                  );
                                                                  logFirebaseEvent(
                                                                      'Text_update_page_state');
                                                                  _model.atualGG =
                                                                      0;
                                                                  _model.totalGG = _model
                                                                      .selectGre
                                                                      ?.length;
                                                                  _model.vendidos =
                                                                      0;
                                                                  _model.valorTotal =
                                                                      0.0;
                                                                  _model.valorRecebe =
                                                                      0.0;
                                                                  _model.plataforma =
                                                                      0.0;
                                                                  safeSetState(
                                                                      () {});
                                                                  logFirebaseEvent(
                                                                      'Text_wait__delay');
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500));
                                                                  while (_model
                                                                          .atualGG! <
                                                                      _model
                                                                          .totalGG!) {
                                                                    logFirebaseEvent(
                                                                        'Text_update_page_state');
                                                                    _model
                                                                        .vendidos = (_model
                                                                            .vendidos!) +
                                                                        _model
                                                                            .selectGre!
                                                                            .elementAtOrNull(_model.atualGG!)!
                                                                            .quantdd;
                                                                    _model
                                                                        .valorTotal = (_model
                                                                            .valorTotal!) +
                                                                        _model
                                                                            .selectGre!
                                                                            .elementAtOrNull(_model.atualGG!)!
                                                                            .valorTotal;
                                                                    _model
                                                                        .valorRecebe = (_model
                                                                            .valorRecebe!) +
                                                                        _model
                                                                            .selectGre!
                                                                            .elementAtOrNull(_model.atualGG!)!
                                                                            .valorReceber;
                                                                    _model
                                                                        .plataforma = (_model
                                                                            .plataforma!) +
                                                                        _model
                                                                            .selectGre!
                                                                            .elementAtOrNull(_model.atualGG!)!
                                                                            .valorPlataforma;
                                                                    safeSetState(
                                                                        () {});
                                                                    logFirebaseEvent(
                                                                        'Text_update_page_state');
                                                                    _model.atualGG =
                                                                        _model.atualGG! +
                                                                            1;
                                                                    safeSetState(
                                                                        () {});
                                                                    logFirebaseEvent(
                                                                        'Text_wait__delay');
                                                                    await Future.delayed(const Duration(
                                                                        milliseconds:
                                                                            300));
                                                                  }
                                                                  logFirebaseEvent(
                                                                      'Text_backend_call');

                                                                  await _model
                                                                      .data!
                                                                      .elementAtOrNull(
                                                                          _model
                                                                              .atual!)!
                                                                      .reference
                                                                      .update(
                                                                          createDataRecordData(
                                                                        totalVendido:
                                                                            _model.vendidos,
                                                                        valorTotal:
                                                                            _model.valorTotal,
                                                                        estaOculto:
                                                                            false,
                                                                        valorPlataforma:
                                                                            _model.plataforma,
                                                                        valorReceber:
                                                                            _model.valorRecebe,
                                                                      ));
                                                                  logFirebaseEvent(
                                                                      'Text_wait__delay');
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500));
                                                                  logFirebaseEvent(
                                                                      'Text_update_page_state');
                                                                  _model.atual =
                                                                      _model.atual! +
                                                                          1;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                                logFirebaseEvent(
                                                                    'Text_alert_dialog');
                                                                var confirmDialogResponse =
                                                                    await showDialog<
                                                                            bool>(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return WebViewAware(
                                                                              child: AlertDialog(
                                                                                title: Text('fbdb'),
                                                                                content: Text('44444444444444444'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                    child: Text('Cancel'),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                    child: Text('Confirm'),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ) ??
                                                                        false;

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions
                                                                      .somaInteiros(detalhesShowDataRecordList
                                                                          .where((e) =>
                                                                              e.data! >=
                                                                              getCurrentTimestamp)
                                                                          .toList()
                                                                          .map((e) =>
                                                                              e.totalVendido)
                                                                          .toList())
                                                                      .toString(),
                                                                  '0',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      fontSize:
                                                                          28.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 8.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Valor Total a Receber',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
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
                                                                    fontSize:
                                                                        14.0,
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
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DETALHES_SHOW_PAGE_Text_5czwr7jb_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Text_firestore_query');
                                                                _model.dataslk =
                                                                    await queryDataRecordOnce(
                                                                  queryBuilder:
                                                                      (dataRecord) =>
                                                                          dataRecord
                                                                              .where(
                                                                    'show',
                                                                    isEqualTo:
                                                                        widget
                                                                            .show
                                                                            ?.reference,
                                                                  ),
                                                                );
                                                                logFirebaseEvent(
                                                                    'Text_firestore_query');
                                                                _model.selll =
                                                                    await querySelectIngressoRecordOnce(
                                                                  queryBuilder: (selectIngressoRecord) =>
                                                                      selectIngressoRecord
                                                                          .where(
                                                                            'show',
                                                                            isEqualTo:
                                                                                widget.show?.reference,
                                                                          )
                                                                          .where(
                                                                            'salvo',
                                                                            isEqualTo:
                                                                                true,
                                                                          ),
                                                                );
                                                                logFirebaseEvent(
                                                                    'Text_update_page_state');
                                                                _model.atual =
                                                                    0;
                                                                _model.total =
                                                                    _model.selll
                                                                        ?.length;
                                                                safeSetState(
                                                                    () {});
                                                                while (_model
                                                                        .atual! <
                                                                    _model
                                                                        .total!) {
                                                                  if (_model
                                                                          .dataslk
                                                                          ?.where((e) =>
                                                                              e.reference ==
                                                                              _model.selll?.elementAtOrNull(_model.atual!)?.dataShow)
                                                                          .toList()
                                                                          .firstOrNull
                                                                          ?.data !=
                                                                      null) {
                                                                    logFirebaseEvent(
                                                                        'Text_backend_call');

                                                                    await _model
                                                                        .selll!
                                                                        .elementAtOrNull(_model
                                                                            .atual!)!
                                                                        .reference
                                                                        .update(
                                                                            createSelectIngressoRecordData(
                                                                          dataEvento: _model
                                                                              .dataslk
                                                                              ?.where((e) => e.reference == _model.selll?.elementAtOrNull(_model.atual!)?.dataShow)
                                                                              .toList()
                                                                              .firstOrNull
                                                                              ?.data,
                                                                        ));
                                                                  }
                                                                  logFirebaseEvent(
                                                                      'Text_wait__delay');
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500));
                                                                  logFirebaseEvent(
                                                                      'Text_update_page_state');
                                                                  _model.atual =
                                                                      _model.atual! +
                                                                          1;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                                logFirebaseEvent(
                                                                    'Text_alert_dialog');
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          AlertDialog(
                                                                        title: Text(
                                                                            'slk'),
                                                                        content:
                                                                            Text('num compensa'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                );

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  formatNumber(
                                                                    functions.calcularTotal2(detalhesShowDataRecordList
                                                                        .where((e) =>
                                                                            e.data! >=
                                                                            getCurrentTimestamp)
                                                                        .toList()
                                                                        .map((e) =>
                                                                            e.valorReceber)
                                                                        .toList()),
                                                                    formatType:
                                                                        FormatType
                                                                            .decimal,
                                                                    decimalType:
                                                                        DecimalType
                                                                            .commaDecimal,
                                                                    currency:
                                                                        'R\$',
                                                                  ),
                                                                  'R\$0,00',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      fontSize:
                                                                          28.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 8.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 22.0)),
                                              ),
                                            ),
                                          if (FFAppState().telaDetalhes == 1)
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Container(
                                                width: double.infinity,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(
                                                        0.0,
                                                        2.0,
                                                      ),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(12.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0),
                                                              child: Text(
                                                                'Detalhes do Evento',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              if ((_model.destaqueme ==
                                                                      true) &&
                                                                  (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.nivelAcesso,
                                                                          '') ==
                                                                      'Administrador'))
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'DETALHES_SHOW_PAGE_Icon_gmvsei62_ON_TAP');
                                                                      if (_model
                                                                              .docDestaque !=
                                                                          null) {
                                                                        logFirebaseEvent(
                                                                            'Icon_backend_call');
                                                                        await _model
                                                                            .docDestaque!
                                                                            .delete();
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'Icon_backend_call');
                                                                        await widget
                                                                            .show!
                                                                            .destaques!
                                                                            .delete();
                                                                      }

                                                                      logFirebaseEvent(
                                                                          'Icon_update_page_state');
                                                                      _model.destaqueme =
                                                                          false;
                                                                      _model.docDestaque =
                                                                          null;
                                                                      safeSetState(
                                                                          () {});
                                                                      logFirebaseEvent(
                                                                          'Icon_backend_call');

                                                                      await widget
                                                                          .show!
                                                                          .reference
                                                                          .update({
                                                                        ...createShowsRecordData(
                                                                          destaque:
                                                                              false,
                                                                        ),
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'destaques':
                                                                                FieldValue.delete(),
                                                                          },
                                                                        ),
                                                                      });
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .star,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if ((_model.destaqueme ==
                                                                      false) &&
                                                                  (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.nivelAcesso,
                                                                          '') ==
                                                                      'Administrador'))
                                                                AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'DETALHES_SHOW_PAGE_Icon_kvg5mvmm_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Icon_backend_call');

                                                                      var showsDestaqueRecordReference = ShowsDestaqueRecord
                                                                          .collection
                                                                          .doc();
                                                                      await showsDestaqueRecordReference
                                                                          .set(
                                                                              createShowsDestaqueRecordData(
                                                                        show: widget
                                                                            .show
                                                                            ?.reference,
                                                                      ));
                                                                      _model.destaque = ShowsDestaqueRecord.getDocumentFromData(
                                                                          createShowsDestaqueRecordData(
                                                                            show:
                                                                                widget.show?.reference,
                                                                          ),
                                                                          showsDestaqueRecordReference);
                                                                      logFirebaseEvent(
                                                                          'Icon_update_page_state');
                                                                      _model.destaqueme =
                                                                          true;
                                                                      _model.docDestaque = _model
                                                                          .destaque
                                                                          ?.reference;
                                                                      safeSetState(
                                                                          () {});
                                                                      logFirebaseEvent(
                                                                          'Icon_backend_call');

                                                                      await widget
                                                                          .show!
                                                                          .reference
                                                                          .update(
                                                                              createShowsRecordData(
                                                                        destaque:
                                                                            true,
                                                                        destaques: _model
                                                                            .destaque
                                                                            ?.reference,
                                                                      ));

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .star_border,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'DETALHES_SHOW_Container_n95d3bce_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Container_copy_to_clipboard');
                                                                  await Clipboard.setData(
                                                                      ClipboardData(
                                                                          text:
                                                                              'https://comediaingressos.com.br/detalhes?show=${widget.show?.slug}'));
                                                                  logFirebaseEvent(
                                                                      'Container_show_snack_bar');
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Copiado com Sucesso.',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                    ),
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .content_copy,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                        Text(
                                                                          'Copiar Link',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.poppins(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ],
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    widget
                                                                        .show!
                                                                        .foto,
                                                                    width:
                                                                        240.0,
                                                                    height:
                                                                        240.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DETALHES_SHOW_DOWNLOAD_DA_IMAGEM_BTN_ON_');
                                                                    logFirebaseEvent(
                                                                        'Button_custom_action');
                                                                    await actions
                                                                        .downloadImage(
                                                                      widget
                                                                          .show!
                                                                          .foto,
                                                                      widget
                                                                          .show!
                                                                          .nome,
                                                                    );
                                                                  },
                                                                  text:
                                                                      'Download da Imagem',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 8.0)),
                                                            ),
                                                            Flexible(
                                                              child: Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth:
                                                                      600.0,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(8.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Visualizações da página',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      widget.show?.visualizacoes.toString(),
                                                                                      '0',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 8.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              logFirebaseEvent('DETALHES_SHOW_PAGE_Avaliacoes_ON_TAP');
                                                                              logFirebaseEvent('Avaliacoes_update_app_state');
                                                                              FFAppState().telaDetalhes = 4;
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: double.infinity,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  width: 1.0,
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.all(12.0),
                                                                                child: Stack(
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        FutureBuilder<int>(
                                                                                          future: queryAvaliacoesRecordCount(
                                                                                            queryBuilder: (avaliacoesRecord) => avaliacoesRecord.where(
                                                                                              'show',
                                                                                              isEqualTo: widget.show?.reference,
                                                                                            ),
                                                                                          ),
                                                                                          builder: (context, snapshot) {
                                                                                            // Customize what your widget looks like when it's loading.
                                                                                            if (!snapshot.hasData) {
                                                                                              return Center(
                                                                                                child: SizedBox(
                                                                                                  width: 50.0,
                                                                                                  height: 50.0,
                                                                                                  child: CircularProgressIndicator(
                                                                                                    valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                      FlutterFlowTheme.of(context).primary,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                            int textCount = snapshot.data!;

                                                                                            return Text(
                                                                                              textCount.toString(),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    font: GoogleFonts.poppins(
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    fontSize: 24.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                        Text(
                                                                                          'Avaliações',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.poppins(
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                        ),
                                                                                      ].divide(SizedBox(width: 8.0)),
                                                                                    ),
                                                                                    if (valueOrDefault(currentUserDocument?.nivelAcesso, '') == 'Administrador')
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                        child: AuthUserStreamWidget(
                                                                                          builder: (context) => InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('DETALHES_SHOW_PAGE_Icon_5i27h36t_ON_TAP');
                                                                                              logFirebaseEvent('Icon_bottom_sheet');
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return WebViewAware(
                                                                                                    child: GestureDetector(
                                                                                                      onTap: () {
                                                                                                        FocusScope.of(context).unfocus();
                                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                                      },
                                                                                                      child: Padding(
                                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                                        child: AddAvaliacaoWidget(
                                                                                                          show: widget.show!.reference,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.add_circle,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, 0.0),
                                                                                      child: Icon(
                                                                                        Icons.ads_click,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Text(
                                                                                'Integrações',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.poppins(
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('DETALHES_SHOW_Container_wz2oy1z9_ON_TAP');
                                                                                        logFirebaseEvent('Container_firestore_query');
                                                                                        _model.analitic = await queryAnalyticsRecordOnce(
                                                                                          queryBuilder: (analyticsRecord) => analyticsRecord
                                                                                              .where(
                                                                                                'show',
                                                                                                isEqualTo: widget.show?.reference,
                                                                                              )
                                                                                              .where(
                                                                                                'qual',
                                                                                                isEqualTo: 'Pixel',
                                                                                              ),
                                                                                          singleRecord: true,
                                                                                        ).then((s) => s.firstOrNull);
                                                                                        if (_model.analitic?.reference != null) {
                                                                                          logFirebaseEvent('Container_bottom_sheet');
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return WebViewAware(
                                                                                                child: GestureDetector(
                                                                                                  onTap: () {
                                                                                                    FocusScope.of(context).unfocus();
                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                  },
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                    child: EditPixelWidget(
                                                                                                      show: widget.show!.reference,
                                                                                                      analytic: _model.analitic!,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        } else {
                                                                                          logFirebaseEvent('Container_bottom_sheet');
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return WebViewAware(
                                                                                                child: GestureDetector(
                                                                                                  onTap: () {
                                                                                                    FocusScope.of(context).unfocus();
                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                  },
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                    child: AddPixelWidget(
                                                                                                      show: widget.show!.reference,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        }

                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      child: Container(
                                                                                        width: double.infinity,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          borderRadius: BorderRadius.circular(6.0),
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsets.all(8.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [
                                                                                              ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                child: Image.asset(
                                                                                                  'assets/images/facebook.png',
                                                                                                  height: 50.0,
                                                                                                  fit: BoxFit.cover,
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                'Meta Pixel',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.poppins(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ].divide(SizedBox(height: 8.0)),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('DETALHES_SHOW_Container_wzcegwgt_ON_TAP');
                                                                                        logFirebaseEvent('Container_firestore_query');
                                                                                        _model.analiticGG = await queryAnalyticsRecordOnce(
                                                                                          queryBuilder: (analyticsRecord) => analyticsRecord
                                                                                              .where(
                                                                                                'show',
                                                                                                isEqualTo: widget.show?.reference,
                                                                                              )
                                                                                              .where(
                                                                                                'qual',
                                                                                                isEqualTo: 'Google',
                                                                                              ),
                                                                                          singleRecord: true,
                                                                                        ).then((s) => s.firstOrNull);
                                                                                        if (_model.analitic?.reference != null) {
                                                                                          logFirebaseEvent('Container_bottom_sheet');
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return WebViewAware(
                                                                                                child: GestureDetector(
                                                                                                  onTap: () {
                                                                                                    FocusScope.of(context).unfocus();
                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                  },
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                    child: EditGoogleManagerWidget(
                                                                                                      show: widget.show!.reference,
                                                                                                      analytic: _model.analiticGG!,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        } else {
                                                                                          logFirebaseEvent('Container_bottom_sheet');
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return WebViewAware(
                                                                                                child: GestureDetector(
                                                                                                  onTap: () {
                                                                                                    FocusScope.of(context).unfocus();
                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                  },
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                    child: AddGoogleManagerWidget(
                                                                                                      show: widget.show!.reference,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        }

                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      child: Container(
                                                                                        width: double.infinity,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          borderRadius: BorderRadius.circular(6.0),
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsets.all(8.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [
                                                                                              ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                child: Image.asset(
                                                                                                  'assets/images/google.png',
                                                                                                  height: 50.0,
                                                                                                  fit: BoxFit.cover,
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                'Tag Manager',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.poppins(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ].divide(SizedBox(height: 8.0)),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 16.0)),
                                                                              ),
                                                                            ].divide(SizedBox(height: 16.0)),
                                                                          ),
                                                                        ].divide(SizedBox(height: 16.0)),
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          16.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 16.0)),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          constraints:
                                                              BoxConstraints(
                                                            minHeight: 100.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 4.0,
                                                                color: Color(
                                                                    0x33000000),
                                                                offset: Offset(
                                                                  0.0,
                                                                  2.0,
                                                                ),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    12.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'DETALHES_SHOW_PAGE_Text_14rjnz46_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Text_firestore_query');
                                                                          _model.mouse =
                                                                              await queryDataRecordOnce(
                                                                            queryBuilder: (dataRecord) =>
                                                                                dataRecord.where(
                                                                              'show',
                                                                              isEqualTo: widget.show?.reference,
                                                                            ),
                                                                          );
                                                                          logFirebaseEvent(
                                                                              'Text_update_page_state');
                                                                          _model.atual =
                                                                              0;
                                                                          _model.total = _model
                                                                              .mouse
                                                                              ?.length;
                                                                          _model.quantdd =
                                                                              0;
                                                                          safeSetState(
                                                                              () {});
                                                                          while (_model.atual! <
                                                                              _model.total!) {
                                                                            logFirebaseEvent('Text_firestore_query');
                                                                            _model.lolol =
                                                                                await querySelectIngressoRecordOnce(
                                                                              queryBuilder: (selectIngressoRecord) => selectIngressoRecord
                                                                                  .where(
                                                                                    'salvo',
                                                                                    isEqualTo: true,
                                                                                  )
                                                                                  .where(
                                                                                    'data_show',
                                                                                    isEqualTo: _model.mouse?.elementAtOrNull(_model.atual!)?.reference,
                                                                                  ),
                                                                            );
                                                                            logFirebaseEvent('Text_update_page_state');
                                                                            _model.atualGG =
                                                                                0;
                                                                            _model.totalGG =
                                                                                _model.lolol?.length;
                                                                            _model.quantdd =
                                                                                0;
                                                                            safeSetState(() {});
                                                                            while (_model.atualGG! <
                                                                                _model.totalGG!) {
                                                                              logFirebaseEvent('Text_update_page_state');
                                                                              _model.quantdd = (_model.quantdd!) + _model.lolol!.elementAtOrNull(_model.atualGG!)!.quantdd;
                                                                              safeSetState(() {});
                                                                              logFirebaseEvent('Text_update_page_state');
                                                                              _model.atualGG = _model.atualGG! + 1;
                                                                              safeSetState(() {});
                                                                            }
                                                                            logFirebaseEvent('Text_wait__delay');
                                                                            await Future.delayed(const Duration(milliseconds: 500));
                                                                            logFirebaseEvent('Text_backend_call');

                                                                            await _model.mouse!.elementAtOrNull(_model.atual!)!.reference.update(createDataRecordData(
                                                                                  totalVendido: _model.quantdd,
                                                                                ));
                                                                            logFirebaseEvent('Text_wait__delay');
                                                                            await Future.delayed(const Duration(milliseconds: 1000));
                                                                            logFirebaseEvent('Text_update_page_state');
                                                                            _model.atual =
                                                                                _model.atual! + 1;
                                                                            safeSetState(() {});
                                                                          }
                                                                          logFirebaseEvent(
                                                                              'Text_alert_dialog');
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return WebViewAware(
                                                                                child: AlertDialog(
                                                                                  title: Text('yyyyyyyyyyyy'),
                                                                                  content: Text('ggggggggggg'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          );

                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'Datas e Ingressos do Evento',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.poppins(
                                                                                  fontWeight: FontWeight.w600,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'DETALHES_SHOW_PAGE_NOVA_DATA_BTN_ON_TAP');
                                                                        logFirebaseEvent(
                                                                            'Button_date_time_picker');
                                                                        final _datePickedDate =
                                                                            await showDatePicker(
                                                                          context:
                                                                              context,
                                                                          initialDate:
                                                                              getCurrentTimestamp,
                                                                          firstDate:
                                                                              (getCurrentTimestamp ?? DateTime(1900)),
                                                                          lastDate:
                                                                              DateTime(2050),
                                                                          builder:
                                                                              (context, child) {
                                                                            return wrapInMaterialDatePickerTheme(
                                                                              context,
                                                                              child!,
                                                                              headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                              headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                              headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                    font: GoogleFonts.poppins(
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                                    ),
                                                                                    fontSize: 32.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                                  ),
                                                                              pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                              selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).corMenu,
                                                                              selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                              actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                              iconSize: 24.0,
                                                                            );
                                                                          },
                                                                        );

                                                                        TimeOfDay?
                                                                            _datePickedTime;
                                                                        if (_datePickedDate !=
                                                                            null) {
                                                                          _datePickedTime =
                                                                              await showTimePicker(
                                                                            context:
                                                                                context,
                                                                            initialTime:
                                                                                TimeOfDay.fromDateTime(getCurrentTimestamp),
                                                                            builder:
                                                                                (context, child) {
                                                                              return wrapInMaterialTimePickerTheme(
                                                                                context,
                                                                                child!,
                                                                                headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                      font: GoogleFonts.poppins(
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                                      ),
                                                                                      fontSize: 32.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                                    ),
                                                                                pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).corMenu,
                                                                                selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                iconSize: 24.0,
                                                                              );
                                                                            },
                                                                          );
                                                                        }

                                                                        if (_datePickedDate !=
                                                                                null &&
                                                                            _datePickedTime !=
                                                                                null) {
                                                                          safeSetState(
                                                                              () {
                                                                            _model.datePicked =
                                                                                DateTime(
                                                                              _datePickedDate.year,
                                                                              _datePickedDate.month,
                                                                              _datePickedDate.day,
                                                                              _datePickedTime!.hour,
                                                                              _datePickedTime.minute,
                                                                            );
                                                                          });
                                                                        } else if (_model.datePicked !=
                                                                            null) {
                                                                          safeSetState(
                                                                              () {
                                                                            _model.datePicked =
                                                                                getCurrentTimestamp;
                                                                          });
                                                                        }
                                                                        if (!((_model.datePicked ==
                                                                                getCurrentTimestamp) ||
                                                                            (_model.datePicked ==
                                                                                null))) {
                                                                          logFirebaseEvent(
                                                                              'Button_bottom_sheet');
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            enableDrag:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: AdicionarDataWidget(
                                                                                      show: widget.show!,
                                                                                      data: _model.datePicked!,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));
                                                                        }
                                                                      },
                                                                      text:
                                                                          'NOVA DATA',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        height:
                                                                            40.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .corMenu,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                              ),
                                                                              color: Colors.white,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                            ),
                                                                        elevation:
                                                                            3.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(24.0),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final datass = detalhesShowDataRecordList
                                                                            .where((e) =>
                                                                                e.data! >=
                                                                                getCurrentTimestamp)
                                                                            .toList()
                                                                            .sortedList(
                                                                                keyOf: (e) => e.data!,
                                                                                desc: false)
                                                                            .toList();

                                                                        return FlutterFlowDataTable<
                                                                            DataRecord>(
                                                                          controller:
                                                                              _model.paginatedDataTableController1,
                                                                          data:
                                                                              datass,
                                                                          columnsBuilder:
                                                                              (onSortChanged) => [
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'Data',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        font: GoogleFonts.poppins(
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                        ),
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Vendidos',
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                          ),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Total',
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                          ),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Disponível',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                          ),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: FaIcon(
                                                                                    FontAwesomeIcons.cog,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              fixedWidth: 50.0,
                                                                            ),
                                                                          ],
                                                                          dataRowBuilder: (datassItem, datassIndex, selected, onSelectChanged) =>
                                                                              DataRow(
                                                                            color:
                                                                                WidgetStateProperty.all(
                                                                              datassIndex % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                            cells:
                                                                                [
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  dateTimeFormat(
                                                                                    "d/M/y, H:m",
                                                                                    datassItem.data,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ),
                                                                                  '28/12/2024',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.poppins(
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          datassItem.totalVendido.toString(),
                                                                                          '0',
                                                                                        ),
                                                                                        textAlign: TextAlign.center,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.poppins(
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    datassItem.totalIngressos.toString(),
                                                                                    '0',
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.poppins(
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        (datassItem.totalIngressos - datassItem.totalVendido).toString(),
                                                                                        '0',
                                                                                      ),
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            font: GoogleFonts.poppins(
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('DETALHES_SHOW_PAGE_Icon_cz1yzmre_ON_TAP');
                                                                                    logFirebaseEvent('Icon_update_app_state');
                                                                                    FFAppState().telaDetalhes = 3;
                                                                                    safeSetState(() {});
                                                                                    logFirebaseEvent('Icon_update_page_state');
                                                                                    _model.dataSelect = datassItem.reference;
                                                                                    safeSetState(() {});
                                                                                  },
                                                                                  child: Icon(
                                                                                    Icons.remove_red_eye,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 28.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ].map((c) => DataCell(c)).toList(),
                                                                          ),
                                                                          paginated:
                                                                              true,
                                                                          selectable:
                                                                              false,
                                                                          hidePaginator:
                                                                              false,
                                                                          showFirstLastButtons:
                                                                              false,
                                                                          headingRowHeight:
                                                                              56.0,
                                                                          dataRowHeight:
                                                                              48.0,
                                                                          columnSpacing:
                                                                              5.0,
                                                                          headingRowColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          addHorizontalDivider:
                                                                              true,
                                                                          addTopAndBottomDivider:
                                                                              false,
                                                                          hideDefaultHorizontalDivider:
                                                                              true,
                                                                          horizontalDividerColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          horizontalDividerThickness:
                                                                              1.0,
                                                                          addVerticalDivider:
                                                                              false,
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height:
                                                                      16.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 16.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (FFAppState().telaDetalhes == 2)
                                            wrapWithModel(
                                              model: _model.bordero2Model,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: BorderoWidget(
                                                show: widget.show!,
                                                vendas:
                                                    containerVendaRecordList,
                                                datas:
                                                    detalhesShowDataRecordList
                                                        .where((e) =>
                                                            e.data! >=
                                                            getCurrentTimestamp)
                                                        .toList(),
                                              ),
                                            ),
                                          if (FFAppState().telaDetalhes == 3)
                                            wrapWithModel(
                                              model: _model.borderoDatasModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: BorderoDatasWidget(
                                                dataSelecionada:
                                                    _model.dataSelect,
                                                show: widget.show!,
                                                temDatas:
                                                    detalhesShowDataRecordList
                                                        .where((e) =>
                                                            e.data! >
                                                            getCurrentTimestamp)
                                                        .toList()
                                                        .isNotEmpty,
                                              ),
                                            ),
                                          if (FFAppState().telaDetalhes == 4)
                                            Flexible(
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            'Avaliações do Show',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'DETALHES_SHOW_CRIAR_AVALIAO_BTN_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Button_bottom_sheet');
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              enableDrag: false,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return WebViewAware(
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          AddAvaliacaoWidget(
                                                                        show: widget
                                                                            .show!
                                                                            .reference,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));
                                                          },
                                                          text:
                                                              'CRIAR AVALIAÇÃO',
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .corMenu,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    StreamBuilder<
                                                        List<AvaliacoesRecord>>(
                                                      stream:
                                                          queryAvaliacoesRecord(
                                                        queryBuilder:
                                                            (avaliacoesRecord) =>
                                                                avaliacoesRecord
                                                                    .where(
                                                          'show',
                                                          isEqualTo: widget
                                                              .show?.reference,
                                                        ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                        List<AvaliacoesRecord>
                                                            listaAvaliacoesAvaliacoesRecordList =
                                                            snapshot.data!;

                                                        return Container(
                                                          width:
                                                              double.infinity,
                                                          constraints:
                                                              BoxConstraints(
                                                            maxHeight: 400.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Builder(
                                                            builder: (context) {
                                                              final avaliacao =
                                                                  listaAvaliacoesAvaliacoesRecordList
                                                                      .toList();

                                                              return FlutterFlowDataTable<
                                                                  AvaliacoesRecord>(
                                                                controller: _model
                                                                    .paginatedDataTableController2,
                                                                data: avaliacao,
                                                                columnsBuilder:
                                                                    (onSortChanged) =>
                                                                        [
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Nota',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Cliente',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Comentário',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .cog,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    fixedWidth:
                                                                        100.0,
                                                                  ),
                                                                ],
                                                                dataRowBuilder: (avaliacaoItem,
                                                                        avaliacaoIndex,
                                                                        selected,
                                                                        onSelectChanged) =>
                                                                    DataRow(
                                                                  color:
                                                                      WidgetStateProperty
                                                                          .all(
                                                                    avaliacaoIndex %
                                                                                2 ==
                                                                            0
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .secondaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                  ),
                                                                  cells: [
                                                                    Text(
                                                                      avaliacaoItem
                                                                          .estrelas
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.poppins(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      avaliacaoItem
                                                                          .clienteNome,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.poppins(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      avaliacaoItem
                                                                          .comentario,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.poppins(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'DETALHES_SHOW_PAGE_Icon_x5ds9sfx_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Icon_bottom_sheet');
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            enableDrag:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: DeletWidget(
                                                                                      avaliacao: avaliacaoItem.reference,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));
                                                                        },
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .trashAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ]
                                                                      .map((c) =>
                                                                          DataCell(
                                                                              c))
                                                                      .toList(),
                                                                ),
                                                                paginated: true,
                                                                selectable:
                                                                    false,
                                                                hidePaginator:
                                                                    false,
                                                                showFirstLastButtons:
                                                                    false,
                                                                headingRowHeight:
                                                                    56.0,
                                                                dataRowHeight:
                                                                    48.0,
                                                                columnSpacing:
                                                                    20.0,
                                                                headingRowColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .corMenu,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                addHorizontalDivider:
                                                                    true,
                                                                addTopAndBottomDivider:
                                                                    false,
                                                                hideDefaultHorizontalDivider:
                                                                    true,
                                                                horizontalDividerColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                horizontalDividerThickness:
                                                                    1.0,
                                                                addVerticalDivider:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 16.0)),
                                                ),
                                              ),
                                            ),
                                          if (FFAppState().telaDetalhes == 5)
                                            wrapWithModel(
                                              model:
                                                  _model.borderoCheckIn5Model,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: BorderoCheckInMWidget(
                                                show: widget.show!.reference,
                                              ),
                                            ),
                                          if (FFAppState().telaDetalhes == 6)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model.exportacoesModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ExportacoesWidget(
                                                  show: widget.show!.reference,
                                                  vendas:
                                                      containerVendaRecordList,
                                                  datas:
                                                      detalhesShowDataRecordList,
                                                ),
                                              ),
                                            ),
                                          if (FFAppState().telaDetalhes == 7)
                                            wrapWithModel(
                                              model: _model.historicoModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: HistoricoWidget(
                                                show: widget.show!,
                                                data:
                                                    detalhesShowDataRecordList,
                                              ),
                                            ),
                                          if (FFAppState().telaDetalhes == 8)
                                            wrapWithModel(
                                              model: _model.detalhesLocalModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: DetalhesLocalWidget(
                                                local: _model.detalhesLocal!,
                                                veio: 'detalhes',
                                              ),
                                            ),
                                        ].divide(SizedBox(height: 22.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.detalhesPequenoModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: DetalhesPequenoWidget(
                                    show: widget.show!,
                                    datas: detalhesShowDataRecordList,
                                    vendas: containerVendaRecordList,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ));
      },
    );
  }
}
