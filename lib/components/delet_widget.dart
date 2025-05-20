import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/detalhes_show/detalhes_ingresso/detalhes_ingresso_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'delet_model.dart';
export 'delet_model.dart';

class DeletWidget extends StatefulWidget {
  const DeletWidget({
    super.key,
    this.local,
    this.faixa,
    this.usuario,
    this.ingresso,
    this.data,
    this.show,
    this.avaliacao,
    this.venda,
    this.cupom,
  });

  final DocumentReference? local;
  final DocumentReference? faixa;
  final DocumentReference? usuario;
  final DocumentReference? ingresso;
  final DocumentReference? data;
  final DocumentReference? show;
  final DocumentReference? avaliacao;
  final VendaRecord? venda;
  final CupomRecord? cupom;

  @override
  State<DeletWidget> createState() => _DeletWidgetState();
}

class _DeletWidgetState extends State<DeletWidget> {
  late DeletModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeletModel());

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
        constraints: BoxConstraints(
          maxWidth: 500.0,
          maxHeight: 310.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/atencao.png',
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              () {
                if (widget.local != null) {
                  return 'Tem certeza que deseja deletar este local?';
                } else if (widget.faixa != null) {
                  return 'Tem certeza que deseja deletar esta faixa?';
                } else if (widget.usuario != null) {
                  return 'Tem certeza que deseja deletar este usuário?';
                } else if (widget.ingresso != null) {
                  return 'Tem certeza que deseja deletar este Ingresso?';
                } else if (widget.data != null) {
                  return 'Tem certeza que deseja deletar esta data?';
                } else if (widget.show != null) {
                  return 'Tem certeza que deseja deletar este show?';
                } else if (widget.venda != null) {
                  return 'Tem certeza que deseja deletar essa venda?';
                } else if (widget.cupom != null) {
                  return 'Tem certeza que deseja deletar esse cupom?';
                } else {
                  return 'null';
                }
              }(),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('DELET_COMP_NO_CANCELAR_BTN_ON_TAP');
                    if (widget.ingresso != null) {
                      logFirebaseEvent('Button_bottom_sheet');
                      Navigator.pop(context);
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
                              child: DetalhesIngressoWidget(
                                ingresso: widget.ingresso!,
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    } else {
                      logFirebaseEvent('Button_bottom_sheet');
                      Navigator.pop(context);
                    }
                  },
                  text: 'Não Cancelar',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).corMenu,
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
                          fontSize: 14.0,
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
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('DELET_COMP_SIM_DELETAR_BTN_ON_TAP');
                    if (widget.local != null) {
                      logFirebaseEvent('Button_backend_call');
                      await widget.local!.delete();
                      logFirebaseEvent('Button_show_snack_bar');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Deletado com Sucesso!',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                      logFirebaseEvent('Button_bottom_sheet');
                      Navigator.pop(context);
                    } else {
                      if (widget.faixa != null) {
                        logFirebaseEvent('Button_backend_call');
                        await widget.faixa!.delete();
                        logFirebaseEvent('Button_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Deletado com Sucesso!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                        logFirebaseEvent('Button_bottom_sheet');
                        Navigator.pop(context);
                      } else {
                        if (widget.usuario != null) {
                          logFirebaseEvent('Button_backend_call');
                          await widget.usuario!.delete();
                          logFirebaseEvent('Button_show_snack_bar');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Deletado com Sucesso!',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                          logFirebaseEvent('Button_bottom_sheet');
                          Navigator.pop(context);
                        } else {
                          if (widget.ingresso != null) {
                            logFirebaseEvent('Button_backend_call');
                            await widget.ingresso!.delete();
                            logFirebaseEvent('Button_show_snack_bar');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Deletado com Sucesso!',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            logFirebaseEvent('Button_bottom_sheet');
                            Navigator.pop(context);
                          } else {
                            if (widget.data != null) {
                              logFirebaseEvent('Button_backend_call');
                              await widget.data!.delete();
                              logFirebaseEvent('Button_show_snack_bar');
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Deletado com Sucesso!',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              logFirebaseEvent('Button_bottom_sheet');
                              Navigator.pop(context);
                            } else {
                              if (widget.show != null) {
                                logFirebaseEvent('Button_firestore_query');
                                _model.deletingresso =
                                    await queryIngressoRecordOnce(
                                  queryBuilder: (ingressoRecord) =>
                                      ingressoRecord.where(
                                    'show',
                                    isEqualTo: widget.show,
                                  ),
                                );
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.atual = 0;
                                _model.total = _model.deletingresso?.length;
                                safeSetState(() {});
                                while (_model.atual! < _model.total!) {
                                  logFirebaseEvent('Button_backend_call');
                                  await _model.deletingresso!
                                      .elementAtOrNull(_model.atual!)!
                                      .reference
                                      .delete();
                                  logFirebaseEvent(
                                      'Button_update_component_state');
                                  _model.atual = _model.atual! + 1;
                                  safeSetState(() {});
                                }
                                logFirebaseEvent('Button_firestore_query');
                                _model.deletdata = await queryDataRecordOnce(
                                  queryBuilder: (dataRecord) =>
                                      dataRecord.where(
                                    'show',
                                    isEqualTo: widget.show,
                                  ),
                                );
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.atual = 0;
                                _model.total = _model.deletdata?.length;
                                safeSetState(() {});
                                while (_model.atual! < _model.total!) {
                                  logFirebaseEvent('Button_backend_call');
                                  await _model.deletdata!
                                      .elementAtOrNull(_model.atual!)!
                                      .reference
                                      .delete();
                                  logFirebaseEvent(
                                      'Button_update_component_state');
                                  _model.atual = _model.atual! + 1;
                                  safeSetState(() {});
                                }
                                logFirebaseEvent('Button_backend_call');
                                await widget.show!.delete();
                                logFirebaseEvent('Button_show_snack_bar');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Deletado com Sucesso!',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                                logFirebaseEvent('Button_bottom_sheet');
                                Navigator.pop(context);
                                logFirebaseEvent('Button_navigate_to');

                                context
                                    .pushNamed(DashboardShowsWidget.routeName);

                                logFirebaseEvent('Button_update_app_state');
                                FFAppState().stateADM = '';
                                safeSetState(() {});
                              } else {
                                if (widget.avaliacao != null) {
                                  logFirebaseEvent('Button_backend_call');
                                  await widget.avaliacao!.delete();
                                  logFirebaseEvent('Button_show_snack_bar');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Deletado com Sucesso!',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  logFirebaseEvent('Button_bottom_sheet');
                                  Navigator.pop(context);
                                } else {
                                  if (widget.venda != null) {
                                    logFirebaseEvent('Button_backend_call');
                                    _model.reembolso =
                                        await EstornarPagamentoCall.call(
                                      id: widget.venda?.idPagamento,
                                      valor: widget.venda?.valorTotal,
                                      motivo: 'Cancelado pelo cliente',
                                    );

                                    logFirebaseEvent(
                                        'Button_update_component_state');
                                    _model.atual = 0;
                                    _model.total =
                                        widget.venda?.ingressosVenda.length;
                                    safeSetState(() {});
                                    while (_model.atual! < _model.total!) {
                                      logFirebaseEvent('Button_backend_call');
                                      await widget.venda!.ingressosVenda
                                          .elementAtOrNull(_model.atual!)!
                                          .delete();
                                      logFirebaseEvent('Button_wait__delay');
                                      await Future.delayed(
                                          const Duration(milliseconds: 1000));
                                      logFirebaseEvent(
                                          'Button_update_component_state');
                                      _model.atual = _model.atual! + 1;
                                      safeSetState(() {});
                                    }
                                    logFirebaseEvent('Button_firestore_query');
                                    _model.datavenda =
                                        await queryDataRecordOnce(
                                      queryBuilder: (dataRecord) =>
                                          dataRecord.where(
                                        'id',
                                        isEqualTo: widget.venda?.idData,
                                      ),
                                      singleRecord: true,
                                    ).then((s) => s.firstOrNull);
                                    logFirebaseEvent('Button_backend_call');

                                    await widget.venda!.dataShow!
                                        .update(createDataRecordData(
                                      valorTotal: _model.datavenda!.valorTotal -
                                          widget.venda!.valorTotal,
                                      valorReceber:
                                          _model.datavenda!.valorReceber -
                                              widget.venda!.valorReceber,
                                      valorPlataforma:
                                          _model.datavenda!.valorPlataforma -
                                              widget.venda!.valorPlataforma,
                                      totalVendido:
                                          _model.datavenda!.totalVendido -
                                              widget.venda!.quantdd,
                                    ));
                                    logFirebaseEvent('Button_backend_call');
                                    await widget.venda!.reference.delete();
                                    logFirebaseEvent('Button_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Deletado com Sucesso!',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    logFirebaseEvent('Button_bottom_sheet');
                                    Navigator.pop(context);
                                  } else {
                                    if (widget.cupom != null) {
                                      logFirebaseEvent('Button_backend_call');
                                      await widget.cupom!.reference.delete();
                                      logFirebaseEvent('Button_show_snack_bar');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Deletado com Sucesso!',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      logFirebaseEvent('Button_bottom_sheet');
                                      Navigator.pop(context);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    safeSetState(() {});
                  },
                  text: 'Sim, Deletar',
                  options: FFButtonOptions(
                    height: 40.0,
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
                          fontSize: 14.0,
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
              ].divide(SizedBox(width: 16.0)),
            ),
          ].divide(SizedBox(height: 22.0)),
        ),
      ),
    );
  }
}
