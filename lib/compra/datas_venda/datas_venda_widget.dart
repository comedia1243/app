import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'datas_venda_model.dart';
export 'datas_venda_model.dart';

class DatasVendaWidget extends StatefulWidget {
  const DatasVendaWidget({
    super.key,
    required this.show,
  });

  final ShowsRecord? show;

  @override
  State<DatasVendaWidget> createState() => _DatasVendaWidgetState();
}

class _DatasVendaWidgetState extends State<DatasVendaWidget> {
  late DatasVendaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DatasVendaModel());

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

    return StreamBuilder<List<DataRecord>>(
      stream: queryDataRecord(
        queryBuilder: (dataRecord) => dataRecord
            .where(
              'show',
              isEqualTo: widget.show?.reference,
            )
            .where(
              'status',
              isNotEqualTo: 'expired',
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
        List<DataRecord> containerDataRecordList = snapshot.data!;

        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (containerDataRecordList.length > 3)
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    constraints: BoxConstraints(
                      maxWidth: 1080.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Builder(
                      builder: (context) {
                        final dete = containerDataRecordList
                            .where((e) =>
                                (e.estaOculto == null) ||
                                (e.estaOculto == false))
                            .toList()
                            .sortedList(keyOf: (e) => e.data!, desc: false)
                            .toList();

                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(dete.length, (deteIndex) {
                              final deteItem = dete[deteIndex];
                              return Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'DATAS_VENDA_Container_8rv4y7p5_ON_TAP');
                                    logFirebaseEvent(
                                        'Container_update_app_state');
                                    FFAppState().dataDetalhes =
                                        deteItem.reference;
                                    FFAppState().quantdd = 0;
                                    FFAppState().dataSelectNew = DataStruct(
                                      date: deteItem.data,
                                      referencia: deteItem.reference,
                                      show: deteItem.show,
                                      identificador: deteItem.id,
                                    );
                                    FFAppState().update(() {});
                                  },
                                  child: Container(
                                    width: 130.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: deteItem.reference ==
                                              FFAppState().dataDetalhes
                                          ? FlutterFlowTheme.of(context).error
                                          : FlutterFlowTheme.of(context)
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
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          dateTimeFormat(
                                            "EEE",
                                            deteItem.data!,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: deteItem.reference ==
                                                        FFAppState()
                                                            .dataDetalhes
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          '${dateTimeFormat(
                                            "d/MM",
                                            deteItem.data,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )}  ${dateTimeFormat(
                                            "H:mm",
                                            deteItem.data,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )}h',
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
                                                color: deteItem.reference ==
                                                        FFAppState()
                                                            .dataDetalhes
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                fontSize: 14.0,
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
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })
                                .divide(SizedBox(width: 22.0))
                                .around(SizedBox(width: 22.0)),
                          ),
                        );
                      },
                    ),
                  ),
                if (containerDataRecordList.length <= 3)
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(),
                    child: Builder(
                      builder: (context) {
                        final datapec = containerDataRecordList
                            .where((e) =>
                                (e.estaOculto == null) ||
                                (e.estaOculto == false))
                            .toList()
                            .sortedList(keyOf: (e) => e.data!, desc: false)
                            .toList();

                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                              List.generate(datapec.length, (datapecIndex) {
                            final datapecItem = datapec[datapecIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'DATAS_VENDA_Container_izq7393a_ON_TAP');
                                logFirebaseEvent('Container_update_app_state');
                                FFAppState().dataDetalhes =
                                    datapecItem.reference;
                                FFAppState().quantdd = 0;
                                FFAppState().dataSelectNew = DataStruct(
                                  date: datapecItem.data,
                                  referencia: datapecItem.reference,
                                  show: datapecItem.show,
                                  identificador: datapecItem.id,
                                );
                                FFAppState().update(() {});
                              },
                              child: Container(
                                width: 130.0,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: datapecItem.reference ==
                                          FFAppState().dataDetalhes
                                      ? FlutterFlowTheme.of(context).error
                                      : FlutterFlowTheme.of(context)
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
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      dateTimeFormat(
                                        "EEE",
                                        datapecItem.data!,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: datapecItem.reference ==
                                                    FFAppState().dataDetalhes
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    Text(
                                      '${dateTimeFormat(
                                        "d/MM",
                                        datapecItem.data,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )}  ${dateTimeFormat(
                                        "H:mm",
                                        datapecItem.data,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )}h',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: datapecItem.reference ==
                                                    FFAppState().dataDetalhes
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            fontSize: 14.0,
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
                                  ],
                                ),
                              ),
                            );
                          }).divide(SizedBox(width: 22.0)),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
