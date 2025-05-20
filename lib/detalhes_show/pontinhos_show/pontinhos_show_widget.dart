import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/delet_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'pontinhos_show_model.dart';
export 'pontinhos_show_model.dart';

class PontinhosShowWidget extends StatefulWidget {
  const PontinhosShowWidget({
    super.key,
    required this.show,
  });

  final ShowsRecord? show;

  @override
  State<PontinhosShowWidget> createState() => _PontinhosShowWidgetState();
}

class _PontinhosShowWidgetState extends State<PontinhosShowWidget> {
  late PontinhosShowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PontinhosShowModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 300.0,
        constraints: BoxConstraints(
          maxWidth: 500.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Opções Avançadas',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 300.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).corMenu,
                      icon: FaIcon(
                        FontAwesomeIcons.times,
                        color: FlutterFlowTheme.of(context).info,
                        size: 22.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'PONTINHOS_SHOW_COMP_times_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_bottom_sheet');
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('PONTINHOS_SHOW_EDITAR_EVENTO_BTN_ON_TAP');
                  logFirebaseEvent('Button_bottom_sheet');
                  Navigator.pop(context);
                  logFirebaseEvent('Button_navigate_to');

                  context.pushNamed(
                    EditarShowWidget.routeName,
                    queryParameters: {
                      'show': serializeParam(
                        widget.show?.reference,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
                  );
                },
                text: 'EDITAR EVENTO',
                icon: Icon(
                  Icons.edit_outlined,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).corMenu,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.poppins(
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        color: Colors.white,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).titleSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('PONTINHOS_SHOW_DUPLICAR_EVENTO_BTN_ON_TA');
                  logFirebaseEvent('Button_alert_dialog');
                  var confirmDialogResponse = await showDialog<bool>(
                        context: context,
                        builder: (alertDialogContext) {
                          return WebViewAware(
                            child: AlertDialog(
                              title: Text('Duplicar Evento'),
                              content: Text(
                                  'Tem certeza que deseja duplicar este evento?'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, false),
                                  child: Text('Não, Cancelar'),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, true),
                                  child: Text('Sim, Duplicar'),
                                ),
                              ],
                            ),
                          );
                        },
                      ) ??
                      false;
                  if (confirmDialogResponse) {
                    logFirebaseEvent('Button_backend_call');

                    var showsRecordReference = ShowsRecord.collection.doc();
                    await showsRecordReference.set({
                      ...createShowsRecordData(
                        nome: widget.show?.nome,
                        sinopse: widget.show?.sinopse,
                        foto: widget.show?.foto,
                        faxaEtaria: widget.show?.faxaEtaria,
                        id: random_data.randomString(
                          5,
                          10,
                          true,
                          false,
                          false,
                        ),
                        dataCriacao: getCurrentTimestamp,
                        informacao: widget.show?.informacao,
                        oculto: true,
                        tarja: widget.show?.tarja,
                        fotoCasa: widget.show?.fotoCasa,
                        txtFtMapa: widget.show?.txtFtMapa,
                        destaque: false,
                        quantidadeVendida: 0,
                        visualizacoes: 0,
                        criador: currentUserReference,
                        status: 'Ativo',
                        slug:
                            '${widget.show?.slug}${random_data.randomInteger(0, 3).toString()}',
                        fotoAtualiza: widget.show?.fotoAtualiza,
                        identificador: random_data.randomString(
                          7,
                          13,
                          true,
                          false,
                          false,
                        ),
                        localNome: widget.show?.localNome,
                        local: widget.show?.local,
                        valorReceber: 0.0,
                        valorTotal: 0.0,
                      ),
                      ...mapToFirestore(
                        {
                          'produtores': widget.show?.produtores,
                        },
                      ),
                    });
                    _model.criacaoshow1f = ShowsRecord.getDocumentFromData({
                      ...createShowsRecordData(
                        nome: widget.show?.nome,
                        sinopse: widget.show?.sinopse,
                        foto: widget.show?.foto,
                        faxaEtaria: widget.show?.faxaEtaria,
                        id: random_data.randomString(
                          5,
                          10,
                          true,
                          false,
                          false,
                        ),
                        dataCriacao: getCurrentTimestamp,
                        informacao: widget.show?.informacao,
                        oculto: true,
                        tarja: widget.show?.tarja,
                        fotoCasa: widget.show?.fotoCasa,
                        txtFtMapa: widget.show?.txtFtMapa,
                        destaque: false,
                        quantidadeVendida: 0,
                        visualizacoes: 0,
                        criador: currentUserReference,
                        status: 'Ativo',
                        slug:
                            '${widget.show?.slug}${random_data.randomInteger(0, 3).toString()}',
                        fotoAtualiza: widget.show?.fotoAtualiza,
                        identificador: random_data.randomString(
                          7,
                          13,
                          true,
                          false,
                          false,
                        ),
                        localNome: widget.show?.localNome,
                        local: widget.show?.local,
                        valorReceber: 0.0,
                        valorTotal: 0.0,
                      ),
                      ...mapToFirestore(
                        {
                          'produtores': widget.show?.produtores,
                        },
                      ),
                    }, showsRecordReference);
                    logFirebaseEvent('Button_backend_call');

                    await currentUserReference!.update({
                      ...mapToFirestore(
                        {
                          'shows': FieldValue.arrayUnion(
                              [_model.criacaoshow1f?.reference]),
                        },
                      ),
                    });
                    logFirebaseEvent('Button_firestore_query');
                    _model.duplidata = await queryDataRecordOnce(
                      queryBuilder: (dataRecord) => dataRecord.where(
                        'show',
                        isEqualTo: widget.show?.reference,
                      ),
                    );
                    while (_model.atual! < _model.total!) {
                      logFirebaseEvent('Button_backend_call');

                      var dataRecordReference = DataRecord.collection.doc();
                      await dataRecordReference.set(createDataRecordData(
                        data: _model.duplidata
                            ?.elementAtOrNull(_model.atual!)
                            ?.data,
                        show: _model.criacaoshow1f?.reference,
                        id: random_data.randomString(
                          6,
                          12,
                          true,
                          false,
                          false,
                        ),
                        dataCriacao: getCurrentTimestamp,
                        totalVendido: 0,
                        status: 'Ativo',
                        pago: false,
                        valorTotal: 0.0,
                        valorReceber: 0.0,
                        valorPlataforma: 0.0,
                        estaOculto: false,
                        local: _model.duplidata
                            ?.elementAtOrNull(_model.atual!)
                            ?.local,
                      ));
                      _model.dataCria = DataRecord.getDocumentFromData(
                          createDataRecordData(
                            data: _model.duplidata
                                ?.elementAtOrNull(_model.atual!)
                                ?.data,
                            show: _model.criacaoshow1f?.reference,
                            id: random_data.randomString(
                              6,
                              12,
                              true,
                              false,
                              false,
                            ),
                            dataCriacao: getCurrentTimestamp,
                            totalVendido: 0,
                            status: 'Ativo',
                            pago: false,
                            valorTotal: 0.0,
                            valorReceber: 0.0,
                            valorPlataforma: 0.0,
                            estaOculto: false,
                            local: _model.duplidata
                                ?.elementAtOrNull(_model.atual!)
                                ?.local,
                          ),
                          dataRecordReference);
                      logFirebaseEvent('Button_firestore_query');
                      _model.ingresso = await queryIngressoRecordOnce(
                        queryBuilder: (ingressoRecord) => ingressoRecord.where(
                          'data',
                          isEqualTo: _model.duplidata
                              ?.elementAtOrNull(_model.atual!)
                              ?.reference,
                        ),
                      );
                      logFirebaseEvent('Button_update_component_state');
                      _model.atualSS = 0;
                      _model.totalSS = _model.ingresso?.length;
                      _model.ingressosRef = [];
                      _model.totalIngressos = 0;
                      safeSetState(() {});
                      while (_model.atualSS! < _model.totalSS!) {
                        logFirebaseEvent('Button_backend_call');

                        var ingressoRecordReference =
                            IngressoRecord.collection.doc();
                        await ingressoRecordReference
                            .set(createIngressoRecordData(
                          nome: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.nome,
                          quantidade: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.quantidade,
                          valorSemTaxa: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.valorSemTaxa,
                          valorComTaxa: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.valorComTaxa,
                          valorBilheteria: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.valorBilheteria,
                          data: _model.dataCria?.reference,
                          dataCriacao: getCurrentTimestamp,
                          show: _model.criacaoshow1f?.reference,
                          valoTaxa: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.valoTaxa,
                          valorDesconto: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.valorDesconto,
                          quantidadeRestante: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.quantidadeRestante,
                          descricao: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.descricao,
                          validoQuantasPessoas: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.validoQuantasPessoas,
                          suspender: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.suspender,
                          ocultar: false,
                          finalizacaoVenda: _model.ingresso
                              ?.elementAtOrNull(_model.atualSS!)
                              ?.finalizacaoVenda,
                          quantidadeVendido: 0,
                        ));
                        _model.createIngresso =
                            IngressoRecord.getDocumentFromData(
                                createIngressoRecordData(
                                  nome: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.nome,
                                  quantidade: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.quantidade,
                                  valorSemTaxa: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.valorSemTaxa,
                                  valorComTaxa: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.valorComTaxa,
                                  valorBilheteria: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.valorBilheteria,
                                  data: _model.dataCria?.reference,
                                  dataCriacao: getCurrentTimestamp,
                                  show: _model.criacaoshow1f?.reference,
                                  valoTaxa: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.valoTaxa,
                                  valorDesconto: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.valorDesconto,
                                  quantidadeRestante: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.quantidadeRestante,
                                  descricao: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.descricao,
                                  validoQuantasPessoas: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.validoQuantasPessoas,
                                  suspender: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.suspender,
                                  ocultar: false,
                                  finalizacaoVenda: _model.ingresso
                                      ?.elementAtOrNull(_model.atualSS!)
                                      ?.finalizacaoVenda,
                                  quantidadeVendido: 0,
                                ),
                                ingressoRecordReference);
                        logFirebaseEvent('Button_wait__delay');
                        await Future.delayed(const Duration(milliseconds: 500));
                        logFirebaseEvent('Button_update_component_state');
                        _model.atualSS = _model.atualSS! + 1;
                        _model.addToIngressosRef(
                            _model.createIngresso!.reference);
                        _model.totalIngressos = (_model.totalIngressos!) +
                            _model.createIngresso!.quantidade;
                        safeSetState(() {});
                      }
                      logFirebaseEvent('Button_backend_call');

                      await _model.dataCria!.reference.update({
                        ...createDataRecordData(
                          totalIngressos: _model.totalIngressos,
                        ),
                        ...mapToFirestore(
                          {
                            'ingressos': _model.ingressosRef,
                          },
                        ),
                      });
                      logFirebaseEvent('Button_wait__delay');
                      await Future.delayed(const Duration(milliseconds: 1000));
                      logFirebaseEvent('Button_update_component_state');
                      _model.atual = _model.atual! + 1;
                      safeSetState(() {});
                    }
                    logFirebaseEvent('Button_backend_call');

                    await _model.criacaoshow1f!.reference.update({
                      ...createShowsRecordData(
                        proximaData: functions.menorData(_model.newDatas
                            .map((e) => e.data)
                            .withoutNulls
                            .toList()),
                        proximaDataText: dateTimeFormat(
                          "d/M/y",
                          functions.menorData(_model.newDatas
                              .map((e) => e.data)
                              .withoutNulls
                              .toList()),
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                      ),
                      ...mapToFirestore(
                        {
                          'datasID': _model.newDatas.map((e) => e.id).toList(),
                          'datasText': _model.newDatas
                              .map((e) => dateTimeFormat(
                                    "d/M/y",
                                    e.data,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ))
                              .toList(),
                        },
                      ),
                    });
                    logFirebaseEvent('Button_bottom_sheet');
                    Navigator.pop(context);
                    logFirebaseEvent('Button_show_snack_bar');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Configurações Salvas',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                    logFirebaseEvent('Button_navigate_to');

                    context.pushNamed(
                      DetalhesShowWidget.routeName,
                      queryParameters: {
                        'show': serializeParam(
                          widget.show,
                          ParamType.Document,
                        ),
                        'ref': serializeParam(
                          widget.show?.reference,
                          ParamType.DocumentReference,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        'show': widget.show,
                      },
                    );
                  }

                  safeSetState(() {});
                },
                text: 'DUPLICAR EVENTO',
                icon: Icon(
                  Icons.content_copy_rounded,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).corMenu,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).corMenu,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('PONTINHOS_SHOW_DELETAR_EVENTO_BTN_ON_TAP');
                  logFirebaseEvent('Button_bottom_sheet');
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return WebViewAware(
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: DeletWidget(
                            show: widget.show?.reference,
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                text: 'DELETAR EVENTO',
                icon: Icon(
                  Icons.delete_forever,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).error,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.poppins(
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        color: Colors.white,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).titleSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
