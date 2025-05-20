import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'compra_ingressos_model.dart';
export 'compra_ingressos_model.dart';

class CompraIngressosWidget extends StatefulWidget {
  const CompraIngressosWidget({
    super.key,
    required this.show,
  });

  final DocumentReference? show;

  @override
  State<CompraIngressosWidget> createState() => _CompraIngressosWidgetState();
}

class _CompraIngressosWidgetState extends State<CompraIngressosWidget> {
  late CompraIngressosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompraIngressosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: FutureBuilder<List<SelectIngressoRecord>>(
        future: querySelectIngressoRecordOnce(
          queryBuilder: (selectIngressoRecord) => selectIngressoRecord
              .where(
                'show',
                isEqualTo: widget.show,
              )
              .where(
                'salvo',
                isEqualTo: true,
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
          List<SelectIngressoRecord> ingressSelectIngressoRecordList =
              snapshot.data!;

          return Container(
            width: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 500.0,
            ),
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Text(
                    'Selecione um tipo de Ingresso',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: FutureBuilder<List<IngressoRecord>>(
                    future: queryIngressoRecordOnce(
                      queryBuilder: (ingressoRecord) => ingressoRecord
                          .where(
                            'data',
                            isEqualTo: FFAppState().dataDetalhes != null
                                ? FFAppState().dataDetalhes
                                : FFAppState().dataSelectNew.referencia,
                          )
                          .where(
                            'ocultar',
                            isEqualTo: false,
                          )
                          .orderBy('valorSemTaxa'),
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
                      List<IngressoRecord> appStateNaoVazioIngressoRecordList =
                          snapshot.data!;

                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            appStateNaoVazioIngressoRecordList.length,
                            (appStateNaoVazioIndex) {
                          final appStateNaoVazioIngressoRecord =
                              appStateNaoVazioIngressoRecordList[
                                  appStateNaoVazioIndex];
                          return Container(
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
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
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          appStateNaoVazioIngressoRecord
                                                              .nome,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
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
                                                                  'COMPRA_INGRESSOS_Icon_n3bb6174_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Icon_alert_dialog');
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Informações sobre o Ingresso'),
                                                                      content: Text(
                                                                          appStateNaoVazioIngressoRecord
                                                                              .descricao),
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
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .questionCircle,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 16.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  if (appStateNaoVazioIngressoRecord
                                                          .quantidadeRestante >
                                                      0)
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          formatNumber(
                                                            appStateNaoVazioIngressoRecord
                                                                .valorSemTaxa,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 'R\$',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Text(
                                                          '+taxa',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child: InkWell(
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
                                                                  'COMPRA_INGRESSOS_Icon_vrd2ufgd_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Icon_alert_dialog');
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Taxa de Serviço'),
                                                                      content: Text(
                                                                          'Cobramos para remunerar a manutenção da plataforma, a operação e nossos colaboradores.'),
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
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .questionCircle,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 16.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 4.0)),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    appStateNaoVazioIngressoRecord
                                                                        .nome,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        -1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
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
                                                                          'COMPRA_INGRESSOS_Icon_5dadrmax_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Icon_alert_dialog');
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                AlertDialog(
                                                                              title: Text('Informações sobre o Ingresso'),
                                                                              content: Text(appStateNaoVazioIngressoRecord.descricao),
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
                                                                    },
                                                                    child:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .questionCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Hello World',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Text(
                                                          '+taxa',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        44.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
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
                                                                    'COMPRA_INGRESSOS_Icon_092tx957_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Icon_alert_dialog');
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          AlertDialog(
                                                                        title: Text(
                                                                            'Taxa de Serviço'),
                                                                        content:
                                                                            Text('Cobramos para remunerar a manutenção da plataforma, a operação e nossos colaboradores.'),
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
                                                              child: FaIcon(
                                                                FontAwesomeIcons
                                                                    .questionCircle,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 16.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 4.0)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          if (((appStateNaoVazioIngressoRecord
                                                          .quantidade -
                                                      functions.somaInteiros(
                                                          ingressSelectIngressoRecordList
                                                              .where((e) =>
                                                                  e.ingresso ==
                                                                  appStateNaoVazioIngressoRecord
                                                                      .reference)
                                                              .toList()
                                                              .map((e) =>
                                                                  e.quantdd)
                                                              .toList())) <=
                                                  10) &&
                                              ((appStateNaoVazioIngressoRecord
                                                          .quantidade -
                                                      functions.somaInteiros(
                                                          ingressSelectIngressoRecordList
                                                              .where((e) =>
                                                                  e.ingresso ==
                                                                  appStateNaoVazioIngressoRecord
                                                                      .reference)
                                                              .toList()
                                                              .map((e) =>
                                                                  e.quantdd)
                                                              .toList())) >=
                                                  1))
                                            Container(
                                              width: 90.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x85FEDB4B),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Restam ${(appStateNaoVazioIngressoRecord.quantidade - functions.somaInteiros(ingressSelectIngressoRecordList.where((e) => e.ingresso == appStateNaoVazioIngressoRecord.reference).toList().map((e) => e.quantdd).toList())).toString()}',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFFDB3942),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          if (((appStateNaoVazioIngressoRecord
                                                          .quantidade -
                                                      functions.somaInteiros(
                                                          ingressSelectIngressoRecordList
                                                              .where((e) =>
                                                                  e.ingresso ==
                                                                  appStateNaoVazioIngressoRecord
                                                                      .reference)
                                                              .toList()
                                                              .map((e) =>
                                                                  e.quantdd)
                                                              .toList())) ==
                                                  0) ||
                                              (appStateNaoVazioIngressoRecord
                                                      .suspender >
                                                  0))
                                            Container(
                                              width: 90.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x85FF5963),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Esgotado',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFFDB3942),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          if (((appStateNaoVazioIngressoRecord
                                                          .quantidade -
                                                      functions.somaInteiros(
                                                          ingressSelectIngressoRecordList
                                                              .where((e) =>
                                                                  e.ingresso ==
                                                                  appStateNaoVazioIngressoRecord
                                                                      .reference)
                                                              .toList()
                                                              .map((e) =>
                                                                  e.quantdd)
                                                              .toList())) >
                                                  0) &&
                                              ((appStateNaoVazioIngressoRecord
                                                          .suspender ==
                                                      0) ||
                                                  (appStateNaoVazioIngressoRecord
                                                          .suspender ==
                                                      null)))
                                            Container(
                                              width: 100.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: Color(0x53000000),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'COMPRA_INGRESSOS_Icon_088zn1w0_ON_TAP');
                                                      if (FFAppState()
                                                              .selectIngresso
                                                              .where((e) =>
                                                                  e.ingresso ==
                                                                  appStateNaoVazioIngressoRecord
                                                                      .reference)
                                                              .toList()
                                                              .firstOrNull!
                                                              .quantdd >
                                                          1) {
                                                        logFirebaseEvent(
                                                            'Icon_update_app_state');
                                                        FFAppState()
                                                            .updateSelectIngressoAtIndex(
                                                          FFAppState()
                                                              .selectIngresso
                                                              .where((e) =>
                                                                  e.ingresso ==
                                                                  appStateNaoVazioIngressoRecord
                                                                      .reference)
                                                              .toList()
                                                              .firstOrNull!
                                                              .ordem,
                                                          (e) => e
                                                            ..incrementQuantdd(
                                                                -1)
                                                            ..subTotal = FFAppState()
                                                                    .selectIngresso
                                                                    .where((e) =>
                                                                        e.ingresso ==
                                                                        appStateNaoVazioIngressoRecord
                                                                            .reference)
                                                                    .toList()
                                                                    .firstOrNull!
                                                                    .subTotal -
                                                                appStateNaoVazioIngressoRecord
                                                                    .valorComTaxa,
                                                        );
                                                        FFAppState()
                                                            .update(() {});
                                                        logFirebaseEvent(
                                                            'Icon_update_app_state');
                                                        FFAppState()
                                                            .preVendaTotal = FFAppState()
                                                                .preVendaTotal -
                                                            appStateNaoVazioIngressoRecord
                                                                .valorComTaxa;
                                                        FFAppState().quantdd =
                                                            FFAppState()
                                                                    .quantdd -
                                                                1;
                                                        FFAppState()
                                                                .CompraIngresso =
                                                            FFAppState()
                                                                    .CompraIngresso -
                                                                1;
                                                        FFAppState()
                                                            .preVendaRecebe = FFAppState()
                                                                .preVendaRecebe -
                                                            appStateNaoVazioIngressoRecord
                                                                .valorSemTaxa;
                                                        FFAppState()
                                                            .update(() {});
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Icon_update_app_state');
                                                        FFAppState()
                                                            .preVendaTotal = FFAppState()
                                                                .preVendaTotal -
                                                            FFAppState()
                                                                .selectIngresso
                                                                .where((e) =>
                                                                    e.ingresso ==
                                                                    appStateNaoVazioIngressoRecord
                                                                        .reference)
                                                                .toList()
                                                                .firstOrNull!
                                                                .subTotal;
                                                        FFAppState()
                                                            .quantdd = FFAppState()
                                                                .selectIngresso
                                                                .where((e) =>
                                                                    e.ingresso ==
                                                                    appStateNaoVazioIngressoRecord
                                                                        .reference)
                                                                .toList()
                                                                .firstOrNull!
                                                                .quantdd -
                                                            1;
                                                        FFAppState()
                                                                .CompraIngresso =
                                                            FFAppState()
                                                                    .CompraIngresso -
                                                                1;
                                                        FFAppState()
                                                            .preVendaRecebe = FFAppState()
                                                                .preVendaRecebe -
                                                            appStateNaoVazioIngressoRecord
                                                                .valorSemTaxa;
                                                        FFAppState()
                                                            .update(() {});
                                                        logFirebaseEvent(
                                                            'Icon_update_app_state');
                                                        FFAppState().removeFromSelectIngresso(
                                                            FFAppState()
                                                                .selectIngresso
                                                                .where((e) =>
                                                                    e.ingresso ==
                                                                    appStateNaoVazioIngressoRecord
                                                                        .reference)
                                                                .toList()
                                                                .firstOrNull!);
                                                        FFAppState()
                                                            .update(() {});
                                                        if (FFAppState()
                                                                .selectIngresso
                                                                .length >
                                                            1) {
                                                          logFirebaseEvent(
                                                              'Icon_update_component_state');
                                                          _model.atual = 0;
                                                          _model.total =
                                                              FFAppState()
                                                                  .selectIngresso
                                                                  .length;
                                                          _model.updatePage(
                                                              () {});
                                                          while (_model.atual! <
                                                              _model.total!) {
                                                            logFirebaseEvent(
                                                                'Icon_update_app_state');
                                                            FFAppState()
                                                                .updateSelectIngressoAtIndex(
                                                              _model.atual!,
                                                              (e) => e
                                                                ..ordem = (FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.ordem ==
                                                                            1
                                                                        ? 0
                                                                        : FFAppState()
                                                                            .selectIngresso
                                                                            .elementAtOrNull(_model.atual!)!
                                                                            .ordem) -
                                                                    1,
                                                            );
                                                            FFAppState()
                                                                .update(() {});
                                                          }
                                                        } else {
                                                          if (FFAppState()
                                                                  .selectIngresso
                                                                  .length ==
                                                              1) {
                                                            logFirebaseEvent(
                                                                'Icon_update_app_state');
                                                            FFAppState()
                                                                .updateSelectIngressoAtIndex(
                                                              0,
                                                              (e) =>
                                                                  e..ordem = 0,
                                                            );
                                                            FFAppState()
                                                                .update(() {});
                                                          }
                                                        }
                                                      }

                                                      logFirebaseEvent(
                                                          'Icon_update_app_state');
                                                      FFAppState().removeFromIngressosSelectNew(
                                                          FFAppState()
                                                              .ingressosSelectNew
                                                              .where((e) =>
                                                                  e.referencia ==
                                                                  appStateNaoVazioIngressoRecord
                                                                      .reference)
                                                              .toList()
                                                              .firstOrNull!);
                                                      FFAppState()
                                                          .update(() {});
                                                    },
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .minusCircle,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 22.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      FFAppState()
                                                          .selectIngresso
                                                          .where((e) =>
                                                              e.ingresso ==
                                                              appStateNaoVazioIngressoRecord
                                                                  .reference)
                                                          .toList()
                                                          .firstOrNull
                                                          ?.quantdd
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
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
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'COMPRA_INGRESSOS_Icon_trd7zwkt_ON_TAP');
                                                      if ((FFAppState()
                                                                      .selectIngresso
                                                                      .where((e) =>
                                                                          e.ingresso ==
                                                                          appStateNaoVazioIngressoRecord
                                                                              .reference)
                                                                      .toList()
                                                                      .firstOrNull !=
                                                                  null
                                                              ? FFAppState()
                                                                  .selectIngresso
                                                                  .where((e) =>
                                                                      e.ingresso ==
                                                                      appStateNaoVazioIngressoRecord
                                                                          .reference)
                                                                  .toList()
                                                                  .firstOrNull!
                                                                  .quantdd
                                                              : 0) <
                                                          (appStateNaoVazioIngressoRecord
                                                                  .quantidade -
                                                              functions.somaInteiros(ingressSelectIngressoRecordList
                                                                  .where((e) =>
                                                                      e.ingresso ==
                                                                      appStateNaoVazioIngressoRecord
                                                                          .reference)
                                                                  .toList()
                                                                  .map((e) =>
                                                                      e.quantdd)
                                                                  .toList()))) {
                                                        if (FFAppState()
                                                                .selectIngresso
                                                                .where((e) =>
                                                                    e.ingresso ==
                                                                    appStateNaoVazioIngressoRecord
                                                                        .reference)
                                                                .toList()
                                                                .firstOrNull !=
                                                            null) {
                                                          logFirebaseEvent(
                                                              'Icon_update_app_state');
                                                          FFAppState()
                                                              .updateSelectIngressoAtIndex(
                                                            FFAppState()
                                                                .selectIngresso
                                                                .where((e) =>
                                                                    e.ingresso ==
                                                                    appStateNaoVazioIngressoRecord
                                                                        .reference)
                                                                .toList()
                                                                .firstOrNull!
                                                                .ordem,
                                                            (e) => e
                                                              ..incrementQuantdd(
                                                                  1)
                                                              ..subTotal = appStateNaoVazioIngressoRecord
                                                                      .valorComTaxa +
                                                                  FFAppState()
                                                                      .selectIngresso
                                                                      .where((e) =>
                                                                          e.ingresso ==
                                                                          appStateNaoVazioIngressoRecord
                                                                              .reference)
                                                                      .toList()
                                                                      .firstOrNull!
                                                                      .subTotal,
                                                          );
                                                          FFAppState()
                                                              .update(() {});
                                                          logFirebaseEvent(
                                                              'Icon_update_app_state');
                                                          FFAppState()
                                                              .preVendaTotal = FFAppState()
                                                                  .preVendaTotal +
                                                              appStateNaoVazioIngressoRecord
                                                                  .valorComTaxa;
                                                          FFAppState().quantdd =
                                                              FFAppState()
                                                                      .quantdd +
                                                                  1;
                                                          FFAppState()
                                                                  .CompraIngresso =
                                                              FFAppState()
                                                                      .CompraIngresso +
                                                                  1;
                                                          FFAppState()
                                                              .preVendaRecebe = FFAppState()
                                                                  .preVendaRecebe +
                                                              appStateNaoVazioIngressoRecord
                                                                  .valorSemTaxa;
                                                          FFAppState()
                                                              .update(() {});
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Icon_update_app_state');
                                                          FFAppState()
                                                              .addToSelectIngresso(
                                                                  SelectIngressoStruct(
                                                            quantdd: 1,
                                                            ingresso:
                                                                appStateNaoVazioIngressoRecord
                                                                    .reference,
                                                            ordem: FFAppState()
                                                                    .selectIngresso
                                                                    .isNotEmpty
                                                                ? (FFAppState()
                                                                        .selectIngresso
                                                                        .lastOrNull!
                                                                        .ordem +
                                                                    1)
                                                                : 0,
                                                            subTotal:
                                                                appStateNaoVazioIngressoRecord
                                                                    .valorComTaxa,
                                                          ));
                                                          FFAppState()
                                                              .update(() {});
                                                          logFirebaseEvent(
                                                              'Icon_update_app_state');
                                                          FFAppState()
                                                              .preVendaTotal = FFAppState()
                                                                  .preVendaTotal +
                                                              appStateNaoVazioIngressoRecord
                                                                  .valorComTaxa;
                                                          FFAppState().quantdd =
                                                              1;
                                                          FFAppState()
                                                              .CompraIngresso = 1;
                                                          FFAppState()
                                                              .addToCompraData(
                                                                  appStateNaoVazioIngressoRecord
                                                                      .reference
                                                                      .id);
                                                          FFAppState()
                                                              .preVendaRecebe = FFAppState()
                                                                  .preVendaRecebe +
                                                              appStateNaoVazioIngressoRecord
                                                                  .valorSemTaxa;
                                                          FFAppState()
                                                              .update(() {});
                                                        }

                                                        if (!(FFAppState()
                                                            .ingressosSelectNew
                                                            .where((e) =>
                                                                e.referencia ==
                                                                appStateNaoVazioIngressoRecord
                                                                    .reference)
                                                            .toList()
                                                            .isNotEmpty)) {
                                                          logFirebaseEvent(
                                                              'Icon_update_app_state');
                                                          FFAppState()
                                                              .addToIngressosSelectNew(
                                                                  IngressoStruct(
                                                            referencia:
                                                                appStateNaoVazioIngressoRecord
                                                                    .reference,
                                                            nome:
                                                                appStateNaoVazioIngressoRecord
                                                                    .nome,
                                                          ));
                                                          FFAppState()
                                                              .update(() {});
                                                        }
                                                      }
                                                    },
                                                    child: Icon(
                                                      Icons.add_circle,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'COMPRA_INGRESSOS_COMPRAR_INGRESSOS_BTN_O');
                    if (FFAppState().CompraIngresso >= 1) {
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(FinalizarCompraWidget.routeName);
                    } else {
                      logFirebaseEvent('Button_alert_dialog');
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return WebViewAware(
                            child: AlertDialog(
                              title: Text('Erro!'),
                              content: Text('Você deve adicionar um ingresso'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }
                  },
                  text: 'COMPRAR INGRESSOS',
                  options: FFButtonOptions(
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).error,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ].divide(SizedBox(height: 22.0)),
            ),
          );
        },
      ),
    );
  }
}
