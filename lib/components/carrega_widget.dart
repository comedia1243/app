import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'carrega_model.dart';
export 'carrega_model.dart';

class CarregaWidget extends StatefulWidget {
  const CarregaWidget({
    super.key,
    this.cupom,
    this.valorCupom,
    required this.local,
    required this.type,
    this.cartaoNome,
    this.cartaoNumero,
    this.mesAno,
    this.ccv,
  });

  final CupomRecord? cupom;
  final double? valorCupom;
  final LocalRecord? local;
  final String? type;
  final String? cartaoNome;
  final String? cartaoNumero;
  final String? mesAno;
  final String? ccv;

  @override
  State<CarregaWidget> createState() => _CarregaWidgetState();
}

class _CarregaWidgetState extends State<CarregaWidget> {
  late CarregaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarregaModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CARREGA_COMP_carrega_ON_INIT_STATE');
      logFirebaseEvent('carrega_update_component_state');
      _model.idReferencia = random_data.randomString(
        6,
        12,
        true,
        false,
        false,
      );
      safeSetState(() {});
      logFirebaseEvent('carrega_wait__delay');
      await Future.delayed(const Duration(milliseconds: 500));
      logFirebaseEvent('carrega_backend_call');

      var vendaRecordReference = VendaRecord.collection.doc();
      await vendaRecordReference.set({
        ...createVendaRecordData(
          show: FFAppState().showVisualiza.docReferencia,
          clienteNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
          clienteCelular:
              FFAppState().selectIngresso.firstOrNull?.clienteCelular,
          clienteCpf: FFAppState().selectIngresso.firstOrNull?.clienteCpf,
          idreferencia: _model.idReferencia,
          status: 'Pendente',
          valorTotal: widget.cupom != null
              ? widget.valorCupom
              : FFAppState().preVendaTotal,
          valorReceber: widget.cupom != null
              ? ((widget.valorCupom!) - ((widget.valorCupom!) * 15 / 100))
              : FFAppState().preVendaRecebe,
          dataShow: FFAppState().dataDetalhes,
          endereco: widget.local?.endereco,
          idShow: FFAppState().showVisualiza.identificador,
          dataCriacao: getCurrentTimestamp,
          dataText: dateTimeFormat(
            "dd/M/y",
            FFAppState().dataSelectNew.date,
            locale: FFLocalizations.of(context).languageCode,
          ),
          horaText: dateTimeFormat(
            "Hm",
            FFAppState().dataSelectNew.date,
            locale: FFLocalizations.of(context).languageCode,
          ),
          localEndereco: widget.local?.endereco,
          clienteEmail: FFAppState().selectIngresso.firstOrNull?.clienteEmail,
          showid: FFAppState().showVisualiza.docReferencia?.id,
          cupomDesconto: widget.cupom?.reference,
          dataEvento: FFAppState().dataSelectNew.date,
          data: getCurrentTimestamp,
          idData: FFAppState().dataSelectNew.identificador,
          dataRef: FFAppState().dataSelectNew.referencia?.id,
        ),
        ...mapToFirestore(
          {
            'produtores': FFAppState().showVisualiza.produtores,
          },
        ),
      });
      _model.venda = VendaRecord.getDocumentFromData({
        ...createVendaRecordData(
          show: FFAppState().showVisualiza.docReferencia,
          clienteNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
          clienteCelular:
              FFAppState().selectIngresso.firstOrNull?.clienteCelular,
          clienteCpf: FFAppState().selectIngresso.firstOrNull?.clienteCpf,
          idreferencia: _model.idReferencia,
          status: 'Pendente',
          valorTotal: widget.cupom != null
              ? widget.valorCupom
              : FFAppState().preVendaTotal,
          valorReceber: widget.cupom != null
              ? ((widget.valorCupom!) - ((widget.valorCupom!) * 15 / 100))
              : FFAppState().preVendaRecebe,
          dataShow: FFAppState().dataDetalhes,
          endereco: widget.local?.endereco,
          idShow: FFAppState().showVisualiza.identificador,
          dataCriacao: getCurrentTimestamp,
          dataText: dateTimeFormat(
            "dd/M/y",
            FFAppState().dataSelectNew.date,
            locale: FFLocalizations.of(context).languageCode,
          ),
          horaText: dateTimeFormat(
            "Hm",
            FFAppState().dataSelectNew.date,
            locale: FFLocalizations.of(context).languageCode,
          ),
          localEndereco: widget.local?.endereco,
          clienteEmail: FFAppState().selectIngresso.firstOrNull?.clienteEmail,
          showid: FFAppState().showVisualiza.docReferencia?.id,
          cupomDesconto: widget.cupom?.reference,
          dataEvento: FFAppState().dataSelectNew.date,
          data: getCurrentTimestamp,
          idData: FFAppState().dataSelectNew.identificador,
          dataRef: FFAppState().dataSelectNew.referencia?.id,
        ),
        ...mapToFirestore(
          {
            'produtores': FFAppState().showVisualiza.produtores,
          },
        ),
      }, vendaRecordReference);
      logFirebaseEvent('carrega_update_component_state');
      _model.atual = 0;
      _model.total = FFAppState().selectIngresso.length;
      _model.quantdd = 0;
      safeSetState(() {});
      while (_model.atual! < _model.total!) {
        logFirebaseEvent('carrega_backend_call');

        var selectIngressoRecordReference =
            SelectIngressoRecord.collection.doc();
        await selectIngressoRecordReference.set(createSelectIngressoRecordData(
          ingresso: FFAppState()
              .selectIngresso
              .elementAtOrNull(_model.atual!)
              ?.ingresso,
          quantdd: FFAppState()
              .selectIngresso
              .elementAtOrNull(_model.atual!)
              ?.quantdd,
          salvo: false,
          id: '',
          clienteNome: FFAppState()
              .selectIngresso
              .elementAtOrNull(_model.atual!)
              ?.clienteNome,
          clienteEmail: FFAppState()
              .selectIngresso
              .elementAtOrNull(_model.atual!)
              ?.clienteEmail,
          clienteCpf: FFAppState()
              .selectIngresso
              .elementAtOrNull(_model.atual!)
              ?.clienteCpf,
          clienteCelular: FFAppState()
              .selectIngresso
              .elementAtOrNull(_model.atual!)
              ?.clienteCelular,
          checkForm: true,
          subTotal: FFAppState()
              .selectIngresso
              .elementAtOrNull(_model.atual!)
              ?.subTotal,
          dataShow: FFAppState().dataDetalhes,
          ingressoNome: FFAppState()
              .ingressosSelectNew
              .where((e) =>
                  e.referencia ==
                  FFAppState()
                      .selectIngresso
                      .elementAtOrNull(_model.atual!)
                      ?.ingresso)
              .toList()
              .firstOrNull
              ?.nome,
          show: FFAppState().showVisualiza.docReferencia,
          venda: _model.venda?.reference,
          dataEvento: FFAppState().dataSelectNew.date,
          valorReceber:
              _model.venda!.valorReceber / FFAppState().selectIngresso.length,
          dataCriacao: getCurrentTimestamp,
        ));
        _model.select = SelectIngressoRecord.getDocumentFromData(
            createSelectIngressoRecordData(
              ingresso: FFAppState()
                  .selectIngresso
                  .elementAtOrNull(_model.atual!)
                  ?.ingresso,
              quantdd: FFAppState()
                  .selectIngresso
                  .elementAtOrNull(_model.atual!)
                  ?.quantdd,
              salvo: false,
              id: '',
              clienteNome: FFAppState()
                  .selectIngresso
                  .elementAtOrNull(_model.atual!)
                  ?.clienteNome,
              clienteEmail: FFAppState()
                  .selectIngresso
                  .elementAtOrNull(_model.atual!)
                  ?.clienteEmail,
              clienteCpf: FFAppState()
                  .selectIngresso
                  .elementAtOrNull(_model.atual!)
                  ?.clienteCpf,
              clienteCelular: FFAppState()
                  .selectIngresso
                  .elementAtOrNull(_model.atual!)
                  ?.clienteCelular,
              checkForm: true,
              subTotal: FFAppState()
                  .selectIngresso
                  .elementAtOrNull(_model.atual!)
                  ?.subTotal,
              dataShow: FFAppState().dataDetalhes,
              ingressoNome: FFAppState()
                  .ingressosSelectNew
                  .where((e) =>
                      e.referencia ==
                      FFAppState()
                          .selectIngresso
                          .elementAtOrNull(_model.atual!)
                          ?.ingresso)
                  .toList()
                  .firstOrNull
                  ?.nome,
              show: FFAppState().showVisualiza.docReferencia,
              venda: _model.venda?.reference,
              dataEvento: FFAppState().dataSelectNew.date,
              valorReceber: _model.venda!.valorReceber /
                  FFAppState().selectIngresso.length,
              dataCriacao: getCurrentTimestamp,
            ),
            selectIngressoRecordReference);
        logFirebaseEvent('carrega_update_component_state');
        _model.atual = _model.atual! + 1;
        _model.addToReferenciaSelect(_model.select!.reference);
        _model.quantdd = (_model.quantdd!) + _model.select!.quantdd;
        safeSetState(() {});
      }
      logFirebaseEvent('carrega_custom_action');
      await actions.gerarPDFVenda(
        _model.idReferencia!,
        FFAppState().showVisualiza.nome,
        dateTimeFormat(
          "dd/M/y, H:mm",
          FFAppState().dataSelectNew.date!,
          locale: FFLocalizations.of(context).languageCode,
        ),
        dateTimeFormat(
          "dd/M/y",
          getCurrentTimestamp,
          locale: FFLocalizations.of(context).languageCode,
        ),
        widget.local!.endereco,
        FFAppState().selectIngresso.firstOrNull!.clienteNome,
        'https://47f3ca26be7b17a1a8f0f7c152bcc1c2.cdn.bubble.io/f1706454459056x639312497508886100/comedia8png.png',
        _model.referenciaSelect.toList(),
        _model.venda!.reference,
        'Ingresso${_model.idReferencia}',
      );
      logFirebaseEvent('carrega_backend_call');

      await _model.venda!.reference.update({
        ...createVendaRecordData(
          quantdd: _model.quantdd,
        ),
        ...mapToFirestore(
          {
            'ingressos_venda': _model.referenciaSelect,
          },
        ),
      });
      if (widget.type == 'pix') {
        logFirebaseEvent('carrega_backend_call');
        _model.fluxoPix = await FluxoDePagamentoCall.call(
          metodo: 'PIX',
          valor: widget.cupom != null
              ? widget.valorCupom
              : FFAppState().preVendaTotal,
          titularCPF: FFAppState().selectIngresso.firstOrNull?.clienteCpf,
          clienteNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
          titularEmail: FFAppState().selectIngresso.firstOrNull?.clienteEmail,
          telefone: FFAppState().selectIngresso.firstOrNull?.clienteCelular,
          cep: FFAppState().cepAutomatico,
          enderecoNumero: FFAppState().EnderecoNumAuto,
          referenciaExterna: _model.venda?.reference.id,
          dataVencimento: dateTimeFormat(
            "y-M-d",
            getCurrentTimestamp,
            locale: FFLocalizations.of(context).languageCode,
          ),
          descricao: FFAppState().showVisualiza.identificador,
        );

        if ((_model.fluxoPix?.succeeded ?? true)) {
          logFirebaseEvent('carrega_backend_call');

          await _model.venda!.reference.update(createVendaRecordData(
            idPagamento: FluxoDePagamentoCall.idPay(
              (_model.fluxoPix?.jsonBody ?? ''),
            ),
            tipoPagamento: 'PIX',
            customerId: FluxoDePagamentoCall.customID(
              (_model.fluxoPix?.jsonBody ?? ''),
            ),
            qrcode: FluxoDePagamentoCall.qrcode(
              (_model.fluxoPix?.jsonBody ?? ''),
            ),
            copiacola: FluxoDePagamentoCall.copiacola(
              (_model.fluxoPix?.jsonBody ?? ''),
            ),
            valorPlataforma: (functions
                    .conversorString(FluxoDePagamentoCall.valorBruto(
                  (_model.fluxoPix?.jsonBody ?? ''),
                )!)!) -
                (functions.conversorString(FluxoDePagamentoCall.valorLiquido(
                  (_model.fluxoPix?.jsonBody ?? ''),
                )!)!),
          ));
          logFirebaseEvent('carrega_navigate_to');

          context.pushNamed(
            RetornoWidget.routeName,
            queryParameters: {
              'show': serializeParam(
                FFAppState().showVisualiza.slug,
                ParamType.String,
              ),
              'venda': serializeParam(
                _model.venda?.reference,
                ParamType.DocumentReference,
              ),
              'pagamento': serializeParam(
                'PIX',
                ParamType.String,
              ),
              'idpay': serializeParam(
                FluxoDePagamentoCall.idPay(
                  (_model.fluxoPix?.jsonBody ?? ''),
                ),
                ParamType.String,
              ),
            }.withoutNulls,
          );
        } else {
          logFirebaseEvent('carrega_alert_dialog');
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return WebViewAware(
                child: AlertDialog(
                  title: Text('Erro!'),
                  content: Text(
                      '${(_model.fluxoPix?.jsonBody ?? '').toString()}. Tente Novamente'),
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
          logFirebaseEvent('carrega_bottom_sheet');
          Navigator.pop(context);
        }
      } else {
        logFirebaseEvent('carrega_backend_call');
        _model.fluxoCartao = await FluxoDePagamentoCall.call(
          metodo: 'CARTAO',
          valor: widget.cupom != null
              ? widget.valorCupom
              : FFAppState().preVendaTotal,
          titularCPF: FFAppState().selectIngresso.firstOrNull?.clienteCpf,
          clienteNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
          titularEmail: FFAppState().selectIngresso.firstOrNull?.clienteEmail,
          telefone: FFAppState().selectIngresso.firstOrNull?.clienteCelular,
          cep: FFAppState().cepAutomatico,
          enderecoNumero: FFAppState().EnderecoNumAuto,
          dataVencimento: dateTimeFormat(
            "y-M-d",
            getCurrentTimestamp,
            locale: FFLocalizations.of(context).languageCode,
          ),
          descricao: FFAppState().showVisualiza.identificador,
          referenciaExterna: _model.venda?.reference.id,
          cartaoNome: widget.cartaoNome,
          cartaoNumero: widget.cartaoNumero,
          cartaoMes:
              functions.extrairMes(functions.extrairMes(widget.mesAno!)),
          cartaoAno: '${'20${functions.extrairAno(widget.mesAno!)}'}',
          ccv: widget.ccv,
          titularNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
        );

        if ((_model.fluxoCartao?.succeeded ?? true)) {
          logFirebaseEvent('carrega_backend_call');

          await _model.venda!.reference.update(createVendaRecordData(
            idPagamento: FluxoDePagamentoCall.idPay(
              (_model.fluxoCartao?.jsonBody ?? ''),
            ),
            tipoPagamento: 'CARTAO',
            customerId: FluxoDePagamentoCall.customID(
              (_model.fluxoCartao?.jsonBody ?? ''),
            ),
            valorPlataforma: (functions
                    .conversorString(FluxoDePagamentoCall.valorBruto(
                  (_model.fluxoCartao?.jsonBody ?? ''),
                )!)!) -
                (functions.conversorString(FluxoDePagamentoCall.valorLiquido(
                  (_model.fluxoCartao?.jsonBody ?? ''),
                )!)!),
          ));
          logFirebaseEvent('carrega_navigate_to');

          context.pushNamed(
            RetornoWidget.routeName,
            queryParameters: {
              'show': serializeParam(
                FFAppState().showVisualiza.slug,
                ParamType.String,
              ),
              'venda': serializeParam(
                _model.venda?.reference,
                ParamType.DocumentReference,
              ),
              'pagamento': serializeParam(
                'CARTAO',
                ParamType.String,
              ),
              'idpay': serializeParam(
                FluxoDePagamentoCall.idPay(
                  (_model.fluxoCartao?.jsonBody ?? ''),
                ),
                ParamType.String,
              ),
            }.withoutNulls,
          );
        } else {
          logFirebaseEvent('carrega_alert_dialog');
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return WebViewAware(
                child: AlertDialog(
                  title: Text('Erro!'),
                  content: Text(
                      '${(_model.fluxoCartao?.jsonBody ?? '').toString()}. Tente Novamente'),
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
          logFirebaseEvent('carrega_bottom_sheet');
          Navigator.pop(context);
        }
      }
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
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/Animation_-_1742521254513.gif',
              width: 220.0,
              height: 220.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
