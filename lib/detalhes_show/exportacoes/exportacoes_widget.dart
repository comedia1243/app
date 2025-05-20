import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'exportacoes_model.dart';
export 'exportacoes_model.dart';

class ExportacoesWidget extends StatefulWidget {
  const ExportacoesWidget({
    super.key,
    required this.show,
    required this.vendas,
    required this.datas,
  });

  final DocumentReference? show;
  final List<VendaRecord>? vendas;
  final List<DataRecord>? datas;

  @override
  State<ExportacoesWidget> createState() => _ExportacoesWidgetState();
}

class _ExportacoesWidgetState extends State<ExportacoesWidget> {
  late ExportacoesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExportacoesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ShowsRecord>(
      stream: ShowsRecord.getDocument(widget.show!),
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

        final listShowsRecord = snapshot.data!;

        return Container(
          width: double.infinity,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250.0,
                decoration: BoxDecoration(),
                child: StreamBuilder<List<DataRecord>>(
                  stream: queryDataRecord(
                    queryBuilder: (dataRecord) => dataRecord.where(
                      'show',
                      isEqualTo: widget.show,
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
                    List<DataRecord> rowDataRecordList = snapshot.data!;

                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children:
                            List.generate(rowDataRecordList.length, (rowIndex) {
                          final rowDataRecord = rowDataRecordList[rowIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'EXPORTACOES_Container_hia3k6wb_ON_TAP');
                              logFirebaseEvent('Container_custom_action');
                              await actions.generateAndDownloadPDF(
                                widget.vendas!
                                    .where((e) =>
                                        e.dataShow == rowDataRecord.reference)
                                    .toList()
                                    .map((e) => e.clienteNome)
                                    .toList(),
                                widget.vendas!
                                    .where((e) =>
                                        e.dataShow == rowDataRecord.reference)
                                    .toList()
                                    .map((e) => dateTimeFormat(
                                          "dd/M/y, H:mm",
                                          e.dataCriacao,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ))
                                    .toList(),
                                widget.vendas!
                                    .where((e) =>
                                        e.dataShow == rowDataRecord.reference)
                                    .toList()
                                    .map((e) => formatNumber(
                                          e.valorReceber,
                                          formatType: FormatType.decimal,
                                          decimalType:
                                              DecimalType.periodDecimal,
                                          currency: 'R\$',
                                        ))
                                    .toList(),
                                widget.vendas!
                                    .where((e) =>
                                        e.dataShow == rowDataRecord.reference)
                                    .toList()
                                    .map((e) => e.clienteEmail)
                                    .toList(),
                                widget.vendas!
                                    .where((e) =>
                                        e.dataShow == rowDataRecord.reference)
                                    .toList()
                                    .map((e) => e.clienteCelular)
                                    .toList(),
                                'Bordero',
                                formatNumber(
                                  functions.calcularTotal2(widget.vendas
                                      ?.where((e) =>
                                          e.dataShow == rowDataRecord.reference)
                                      .toList()
                                      .map((e) => e.valorReceber)
                                      .toList()
                                      .toList()),
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.periodDecimal,
                                  currency: 'R\$',
                                ),
                                'Show: ${listShowsRecord.nome}',
                                'https://47f3ca26be7b17a1a8f0f7c152bcc1c2.cdn.bubble.io/f1706454459056x639312497508886100/comedia8png.png',
                                rowDataRecord.data!,
                              );
                            },
                            child: Container(
                              width: 200.0,
                              height: 200.0,
                              constraints: BoxConstraints(
                                maxWidth: 200.0,
                                maxHeight: 200.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.picture_as_pdf,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 48.0,
                                    ),
                                    Text(
                                      'Exportar Bordero',
                                      textAlign: TextAlign.center,
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
                                    Text(
                                      valueOrDefault<String>(
                                        dateTimeFormat(
                                          "dd/M/y, H:mm",
                                          rowDataRecord.data,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        'dd/M/y, H:mm',
                                      ),
                                      textAlign: TextAlign.center,
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
                                  ].divide(SizedBox(height: 8.0)),
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
            ].divide(SizedBox(height: 16.0)),
          ),
        );
      },
    );
  }
}
