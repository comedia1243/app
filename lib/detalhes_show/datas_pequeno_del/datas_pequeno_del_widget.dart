import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'datas_pequeno_del_model.dart';
export 'datas_pequeno_del_model.dart';

class DatasPequenoDelWidget extends StatefulWidget {
  const DatasPequenoDelWidget({
    super.key,
    required this.show,
    required this.data,
    this.vendas,
  });

  final DocumentReference? show;
  final DocumentReference? data;
  final List<VendaRecord>? vendas;

  @override
  State<DatasPequenoDelWidget> createState() => _DatasPequenoDelWidgetState();
}

class _DatasPequenoDelWidgetState extends State<DatasPequenoDelWidget> {
  late DatasPequenoDelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DatasPequenoDelModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DATAS_PEQUENO_DEL_DatasPequenoDel_ON_INI');
      logFirebaseEvent('DatasPequenoDel_update_component_state');
      _model.dataSelect = widget.data;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        StreamBuilder<List<DataRecord>>(
          stream: queryDataRecord(
            queryBuilder: (dataRecord) => dataRecord
                .where(
                  'show',
                  isEqualTo: widget.show,
                )
                .where(
                  'data',
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
            List<DataRecord> buscaDatasDataRecordList = snapshot.data!;

            return Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (buscaDatasDataRecordList.length > 1)
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final listadatas = buscaDatasDataRecordList.toList();

                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(listadatas.length,
                                  (listadatasIndex) {
                                final listadatasItem =
                                    listadatas[listadatasIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'DATAS_PEQUENO_DEL_Container_w7710mgj_ON_');
                                    logFirebaseEvent(
                                        'Container_update_component_state');
                                    _model.dataSelect =
                                        listadatasItem.reference;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: _model.dataSelect ==
                                              listadatasItem.reference
                                          ? FlutterFlowTheme.of(context).corMenu
                                          : FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .corMenu,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: Text(
                                          dateTimeFormat(
                                            "d/M/y, H:mm",
                                            listadatasItem.data!,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.poppins(
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
                                                color: _model.dataSelect ==
                                                        listadatasItem.reference
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .corMenu,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).divide(SizedBox(width: 16.0)),
                            ),
                          );
                        },
                      ),
                    ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: StreamBuilder<List<IngressoRecord>>(
                      stream: queryIngressoRecord(
                        queryBuilder: (ingressoRecord) => ingressoRecord.where(
                          'data',
                          isEqualTo: _model.dataSelect,
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
                        List<IngressoRecord> columnIngressoRecordList =
                            snapshot.data!;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              columnIngressoRecordList.length, (columnIndex) {
                            final columnIngressoRecord =
                                columnIngressoRecordList[columnIndex];
                            return FutureBuilder<List<SelectIngressoRecord>>(
                              future: querySelectIngressoRecordOnce(
                                queryBuilder: (selectIngressoRecord) =>
                                    selectIngressoRecord
                                        .where(
                                          'ingresso',
                                          isEqualTo:
                                              columnIngressoRecord.reference,
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<SelectIngressoRecord>
                                    containerSelectIngressoRecordList =
                                    snapshot.data!;

                                return Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (containerSelectIngressoRecordList
                                          .isNotEmpty)
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          columnIngressoRecord
                                                              .nome,
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
                                                              'DATAS_PEQUENO_DEL_Container_cdfmtpja_ON_');
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                            DetalhesingressWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'ingresso':
                                                                  serializeParam(
                                                                columnIngressoRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .ellipsisV,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 26.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      'Ingressos Vendidos: ${valueOrDefault<String>(
                                                        functions
                                                            .somaInteiros(
                                                                containerSelectIngressoRecordList
                                                                    .map((e) =>
                                                                        valueOrDefault<
                                                                            int>(
                                                                          e.quantdd,
                                                                          0,
                                                                        ))
                                                                    .toList())
                                                            .toString(),
                                                        '0',
                                                      )}',
                                                      'Ingressos Vendidos: 0',
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
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Text(
                                                          'Total Disponível',
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
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
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'DATAS_PEQUENO_DEL_Icon_ltm5pfv8_ON_TAP');
                                                              if ((columnIngressoRecord
                                                                          .quantidadeRestante ==
                                                                      0) &&
                                                                  (columnIngressoRecord
                                                                          .suspender >
                                                                      0)) {
                                                                logFirebaseEvent(
                                                                    'Icon_show_snack_bar');
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                  SnackBar(
                                                                    content:
                                                                        Text(
                                                                      'Ative este Ingresso',
                                                                      style:
                                                                          TextStyle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
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
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'Icon_backend_call');

                                                                await columnIngressoRecord
                                                                    .reference
                                                                    .update(
                                                                        createIngressoRecordData(
                                                                  quantidade:
                                                                      columnIngressoRecord
                                                                              .quantidade +
                                                                          1,
                                                                  quantidadeRestante:
                                                                      columnIngressoRecord
                                                                              .quantidadeRestante +
                                                                          1,
                                                                ));
                                                                logFirebaseEvent(
                                                                    'Icon_backend_call');

                                                                await columnIngressoRecord
                                                                    .data!
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'total_ingressos':
                                                                          FieldValue.increment(
                                                                              1),
                                                                    },
                                                                  ),
                                                                });
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons.add_circle,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .success,
                                                              size: 28.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          columnIngressoRecord
                                                                      .quantidadeRestante ==
                                                                  0
                                                              ? '0'
                                                              : (columnIngressoRecord
                                                                          .quantidade -
                                                                      valueOrDefault<
                                                                          int>(
                                                                        functions.somaInteiros(containerSelectIngressoRecordList
                                                                            .map((e) => valueOrDefault<int>(
                                                                                  e.quantdd,
                                                                                  0,
                                                                                ))
                                                                            .toList()),
                                                                        0,
                                                                      ))
                                                                  .toString(),
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
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
                                                                  'DATAS_PEQUENO_DEL_Icon_fbxe3isg_ON_TAP');
                                                              if (columnIngressoRecord
                                                                      .quantidadeRestante >=
                                                                  1) {
                                                                logFirebaseEvent(
                                                                    'Icon_backend_call');

                                                                await columnIngressoRecord
                                                                    .reference
                                                                    .update(
                                                                        createIngressoRecordData(
                                                                  quantidade:
                                                                      columnIngressoRecord
                                                                              .quantidade -
                                                                          1,
                                                                  quantidadeRestante:
                                                                      columnIngressoRecord
                                                                              .quantidadeRestante -
                                                                          1,
                                                                ));
                                                                logFirebaseEvent(
                                                                    'Icon_backend_call');

                                                                await columnIngressoRecord
                                                                    .data!
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'total_ingressos':
                                                                          FieldValue.increment(
                                                                              -(1)),
                                                                    },
                                                                  ),
                                                                });
                                                              } else {
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
                                                                            'Ops!'),
                                                                        content:
                                                                            Text('Já foram vendidos ${columnIngressoRecord.vendas.length.toString()} Ingressos, por esse motivo você não pode diminuir mais a quantidade.'),
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
                                                              }
                                                            },
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .minusCircle,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              size: 20.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 4.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (!(containerSelectIngressoRecordList
                                          .isNotEmpty))
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          columnIngressoRecord
                                                              .nome,
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
                                                              'DATAS_PEQUENO_DEL_Container_fdqy2ysj_ON_');
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                            DetalhesingressWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'ingresso':
                                                                  serializeParam(
                                                                columnIngressoRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .ellipsisV,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 26.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      'Ingressos Vendidos: 0',
                                                      'Ingressos Vendidos: 0',
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
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Text(
                                                          'Total Disponível',
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
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
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'DATAS_PEQUENO_DEL_Icon_8i9n9jc4_ON_TAP');
                                                              if ((columnIngressoRecord
                                                                          .quantidadeRestante ==
                                                                      0) &&
                                                                  (columnIngressoRecord
                                                                          .suspender >
                                                                      0)) {
                                                                logFirebaseEvent(
                                                                    'Icon_show_snack_bar');
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                  SnackBar(
                                                                    content:
                                                                        Text(
                                                                      'Ative este Ingresso',
                                                                      style:
                                                                          TextStyle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
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
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'Icon_backend_call');

                                                                await columnIngressoRecord
                                                                    .reference
                                                                    .update(
                                                                        createIngressoRecordData(
                                                                  quantidade:
                                                                      columnIngressoRecord
                                                                              .quantidade +
                                                                          1,
                                                                  quantidadeRestante:
                                                                      columnIngressoRecord
                                                                              .quantidadeRestante +
                                                                          1,
                                                                ));
                                                                logFirebaseEvent(
                                                                    'Icon_backend_call');

                                                                await columnIngressoRecord
                                                                    .data!
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'total_ingressos':
                                                                          FieldValue.increment(
                                                                              1),
                                                                    },
                                                                  ),
                                                                });
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons.add_circle,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              size: 28.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          columnIngressoRecord
                                                              .quantidade
                                                              .toString(),
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
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
                                                                  'DATAS_PEQUENO_DEL_Icon_k6vn1fy1_ON_TAP');
                                                              if (columnIngressoRecord
                                                                      .quantidadeRestante >=
                                                                  1) {
                                                                logFirebaseEvent(
                                                                    'Icon_backend_call');

                                                                await columnIngressoRecord
                                                                    .reference
                                                                    .update(
                                                                        createIngressoRecordData(
                                                                  quantidade:
                                                                      columnIngressoRecord
                                                                              .quantidade -
                                                                          1,
                                                                  quantidadeRestante:
                                                                      columnIngressoRecord
                                                                              .quantidadeRestante -
                                                                          1,
                                                                ));
                                                                logFirebaseEvent(
                                                                    'Icon_backend_call');

                                                                await columnIngressoRecord
                                                                    .data!
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'total_ingressos':
                                                                          FieldValue.increment(
                                                                              -(1)),
                                                                    },
                                                                  ),
                                                                });
                                                              } else {
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
                                                                            'Ops!'),
                                                                        content:
                                                                            Text('Já foram vendidos ${columnIngressoRecord.vendas.length.toString()} Ingressos, por esse motivo você não pode diminuir mais a quantidade.'),
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
                                                              }
                                                            },
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .minusCircle,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              size: 20.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 4.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
            );
          },
        ),
      ],
    );
  }
}
