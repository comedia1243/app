import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/carrega_widget.dart';
import '/compra/formulario001/formulario001_widget.dart';
import '/compra/formulario002/formulario002_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'finalizar_compra_model.dart';
export 'finalizar_compra_model.dart';

class FinalizarCompraWidget extends StatefulWidget {
  const FinalizarCompraWidget({super.key});

  static String routeName = 'finalizarCompra';
  static String routePath = 'finalizarCompra';

  @override
  State<FinalizarCompraWidget> createState() => _FinalizarCompraWidgetState();
}

class _FinalizarCompraWidgetState extends State<FinalizarCompraWidget> {
  late FinalizarCompraModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinalizarCompraModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'finalizarCompra'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FINALIZAR_COMPRA_finalizarCompra_ON_INIT');
      logFirebaseEvent('finalizarCompra_wait__delay');
      await Future.delayed(const Duration(milliseconds: 1000));
      logFirebaseEvent('finalizarCompra_timer');
      _model.timerController.onStartTimer();
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textFieldCupomTextController ??= TextEditingController();
    _model.textFieldCupomFocusNode ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.mesEanoTextController ??= TextEditingController();
    _model.mesEanoFocusNode ??= FocusNode();

    _model.textController9 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

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
              child: Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/comedia8png.png',
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 100.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 120.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 150.0;
                            } else {
                              return 80.0;
                            }
                          }(),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 48.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  constraints: BoxConstraints(
                                    maxWidth: 600.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Resumo',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 16.0,
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
                                            if (_model.state == 1)
                                              Container(
                                                width: 120.0,
                                                height: 1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Informações',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 16.0,
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
                                            if (_model.state == 2)
                                              Container(
                                                width: 120.0,
                                                height: 1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Pagamento',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 16.0,
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
                                            if (_model.state == 3)
                                              Container(
                                                width: 120.0,
                                                height: 1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 600.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (_model.state == 1)
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
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
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'FINALIZAR_COMPRA_Icon_t3iw2qss_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Icon_navigate_back');
                                                                  context
                                                                      .safePop();
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .arrow_circle_left_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 32.0,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0),
                                                                child: Text(
                                                                  'Resumo da Compra',
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
                                                                            18.0,
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
                                                              Icon(
                                                                Icons
                                                                    .arrow_circle_left_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                size: 32.0,
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
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
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      'VOCÊ TEM',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.poppins(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  FlutterFlowTimer(
                                                                    initialTime:
                                                                        _model
                                                                            .timerInitialTimeMs,
                                                                    getDisplayTime:
                                                                        (value) =>
                                                                            StopWatchTimer.getDisplayTime(
                                                                      value,
                                                                      hours:
                                                                          false,
                                                                      milliSecond:
                                                                          false,
                                                                    ),
                                                                    controller:
                                                                        _model
                                                                            .timerController,
                                                                    onChanged: (value,
                                                                        displayTime,
                                                                        shouldUpdate) {
                                                                      _model.timerMilliseconds =
                                                                          value;
                                                                      _model.timerValue =
                                                                          displayTime;
                                                                      if (shouldUpdate)
                                                                        safeSetState(
                                                                            () {});
                                                                    },
                                                                    onEnded:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'FINALIZAR_COMPRA_Timer_nvk0gz5c_ON_TIMER');
                                                                      logFirebaseEvent(
                                                                          'Timer_navigate_back');
                                                                      context
                                                                          .safePop();
                                                                    },
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .headlineSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .headlineSmall
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      child:
                                                                          Text(
                                                                        'PARA CONCLUIR A COMPRA',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        8.0)),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
                                                                desktop: false,
                                                              ))
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                  child: Text(
                                                                    'PARA CONCLUIR A COMPRA',
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
                                                                          fontSize:
                                                                              14.0,
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
                                                            ],
                                                          ),
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final listaIngresso =
                                                                    FFAppState()
                                                                        .selectIngresso
                                                                        .toList();

                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: List.generate(
                                                                      listaIngresso
                                                                          .length,
                                                                      (listaIngressoIndex) {
                                                                    final listaIngressoItem =
                                                                        listaIngresso[
                                                                            listaIngressoIndex];
                                                                    return FutureBuilder<
                                                                        IngressoRecord>(
                                                                      future: IngressoRecord.getDocumentOnce(
                                                                          listaIngressoItem
                                                                              .ingresso!),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
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

                                                                        final containerIngressoRecord =
                                                                            snapshot.data!;

                                                                        return Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    '${listaIngressoItem.quantdd.toString()}x ${containerIngressoRecord.nome}',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FontWeight.bold,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: Container(
                                                                                      height: 2.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    formatNumber(
                                                                                      listaIngressoItem.quantdd * containerIngressoRecord.valorSemTaxa,
                                                                                      formatType: FormatType.decimal,
                                                                                      decimalType: DecimalType.automatic,
                                                                                      currency: 'R\$',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FontWeight.bold,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 8.0)),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    '+taxa',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: Container(
                                                                                      height: 2.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    formatNumber(
                                                                                      listaIngressoItem.quantdd * containerIngressoRecord.valoTaxa,
                                                                                      formatType: FormatType.decimal,
                                                                                      decimalType: DecimalType.automatic,
                                                                                      currency: 'R\$',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 8.0)),
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
                                                        ].divide(SizedBox(
                                                            height: 32.0)),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
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
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'FINALIZAR_COMPRA_Text_7cc292hu_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Text_backend_call');
                                                                  _model.fluxoCartaoCopys =
                                                                      await FluxoDePagamentoCall
                                                                          .call(
                                                                    metodo:
                                                                        'CARTAO',
                                                                    valor: 55.0,
                                                                    titularCPF:
                                                                        '06095796148',
                                                                    clienteNome:
                                                                        'vitoria maria',
                                                                    titularEmail:
                                                                        'marotopontocom@gmail.com',
                                                                    telefone:
                                                                        '66984001574',
                                                                    cep:
                                                                        '78575000',
                                                                    enderecoNumero:
                                                                        '155',
                                                                    referenciaExterna:
                                                                        'yyyy',
                                                                    dataVencimento:
                                                                        '2024-10-24',
                                                                    descricao:
                                                                        'dfsfdsfdsf',
                                                                    cartaoNome:
                                                                        'vitoria maria',
                                                                    cartaoNumero:
                                                                        '4444444444444444',
                                                                    cartaoMes:
                                                                        '09',
                                                                    cartaoAno:
                                                                        '2030',
                                                                    ccv: '123',
                                                                    titularNome:
                                                                        'vitoria maria',
                                                                  );

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
                                                                          title:
                                                                              Text('bffbcb'),
                                                                          content:
                                                                              Text((_model.fluxoCartaoCopys?.jsonBody ?? '').toString()),
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
                                                                child: Text(
                                                                  'TOTAL A PAGAR',
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
                                                                            16.0,
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
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  height: 3.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                formatNumber(
                                                                  functions.calcularTotal2(FFAppState()
                                                                      .selectIngresso
                                                                      .map((e) =>
                                                                          e.subTotal)
                                                                      .toList()),
                                                                  formatType:
                                                                      FormatType
                                                                          .decimal,
                                                                  decimalType:
                                                                      DecimalType
                                                                          .automatic,
                                                                  currency:
                                                                      'R\$',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      fontSize:
                                                                          16.0,
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
                                                            ].divide(SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'FINALIZAR_COMPRA_PAGE_AVANAR_BTN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Button_update_page_state');
                                                              _model.state = 2;
                                                              safeSetState(
                                                                  () {});
                                                              logFirebaseEvent(
                                                                  'Button_update_page_state');
                                                              _model.idreferencia =
                                                                  random_data
                                                                      .randomString(
                                                                6,
                                                                10,
                                                                true,
                                                                false,
                                                                false,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: 'AVANÇAR',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 200.0,
                                                              height: 50.0,
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
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                        ].divide(SizedBox(
                                                            height: 32.0)),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 32.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (_model.state == 2)
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
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
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'FINALIZAR_COMPRA_Icon_rd8shgbt_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Icon_update_page_state');
                                                                  _model.state =
                                                                      1;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .arrow_circle_left_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 32.0,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0),
                                                                child: Text(
                                                                  'Dados do Ingresso',
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
                                                                            18.0,
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
                                                              Icon(
                                                                Icons
                                                                    .arrow_circle_left_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                size: 32.0,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .selectIngresso
                                                            .length ==
                                                        1)
                                                      Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Form(
                                                              key: _model
                                                                  .formKey,
                                                              autovalidateMode:
                                                                  AutovalidateMode
                                                                      .disabled,
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textController1,
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldFocusNode1,
                                                                      autofocus:
                                                                          true,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'Nome Completo',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
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
                                                                      validator: _model
                                                                          .textController1Validator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textController2,
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldFocusNode2,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'E-mail',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
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
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .emailAddress,
                                                                      validator: _model
                                                                          .textController2Validator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.textController3,
                                                                        focusNode:
                                                                            _model.textFieldFocusNode3,
                                                                        autofocus:
                                                                            false,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          isDense:
                                                                              false,
                                                                          labelText:
                                                                              'Cpf',
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                font: GoogleFonts.poppins(
                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                font: GoogleFonts.poppins(
                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                        cursorColor:
                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                        validator: _model
                                                                            .textController3Validator
                                                                            .asValidator(context),
                                                                        inputFormatters: [
                                                                          _model
                                                                              .textFieldMask3
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textController4,
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldFocusNode4,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'Celular',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
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
                                                                      validator: _model
                                                                          .textController4Validator
                                                                          .asValidator(
                                                                              context),
                                                                      inputFormatters: [
                                                                        _model
                                                                            .textFieldMask4
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .selectIngresso
                                                            .length >
                                                        1)
                                                      Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final ingressos =
                                                                FFAppState()
                                                                    .selectIngresso
                                                                    .toList();

                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: List.generate(
                                                                  ingressos
                                                                      .length,
                                                                  (ingressosIndex) {
                                                                final ingressosItem =
                                                                    ingressos[
                                                                        ingressosIndex];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
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
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'FINALIZAR_COMPRA_Container_gbp5gjfa_ON_T');
                                                                          if (FFAppState().selectIngresso.where((e) => e.ordem == (e.ordem - 1)).toList().firstOrNull?.checkForm ==
                                                                              false) {
                                                                            if (_model.formSelect ==
                                                                                ingressosItem) {
                                                                              logFirebaseEvent('Container_update_page_state');
                                                                              _model.formSelect = null;
                                                                              safeSetState(() {});
                                                                            } else {
                                                                              logFirebaseEvent('Container_update_page_state');
                                                                              _model.formSelect = ingressosItem;
                                                                              safeSetState(() {});
                                                                            }
                                                                          } else {
                                                                            logFirebaseEvent('Container_show_snack_bar');
                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                              SnackBar(
                                                                                content: Text(
                                                                                  'Preencha o Formulário anterior',
                                                                                  style: TextStyle(
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                                ),
                                                                                duration: Duration(milliseconds: 4000),
                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                              ),
                                                                            );
                                                                          }
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                  child: Text(
                                                                                    () {
                                                                                      if (FFAppState().ingressosSelectNew.length == 1) {
                                                                                        return 'Ingresso N° 1 (Informações Obrigatórias)';
                                                                                      } else if (ingressosIndex == 0) {
                                                                                        return 'Ingresso N° 1 (Informações Obrigatórias)';
                                                                                      } else {
                                                                                        return 'Ingresso N° ${(ingressosIndex + 1).toString()}';
                                                                                      }
                                                                                    }(),
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
                                                                                if (ingressosItem.checkForm)
                                                                                  Icon(
                                                                                    Icons.check_circle,
                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                if (!ingressosItem.checkForm)
                                                                                  Icon(
                                                                                    Icons.circle_outlined,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if (ingressosIndex ==
                                                                          0)
                                                                        Formulario001Widget(
                                                                          key: Key(
                                                                              'Keyuuz_${ingressosIndex}_of_${ingressos.length}'),
                                                                          select:
                                                                              ingressosItem,
                                                                        ),
                                                                      if ((ingressosIndex !=
                                                                              0) &&
                                                                          (FFAppState().selectIngresso.firstOrNull?.checkForm ==
                                                                              true))
                                                                        Formulario002Widget(
                                                                          key: Key(
                                                                              'Keyyzb_${ingressosIndex}_of_${ingressos.length}'),
                                                                          select:
                                                                              ingressosItem,
                                                                        ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            8.0)),
                                                                  ),
                                                                );
                                                              }).divide(SizedBox(
                                                                  height:
                                                                      16.0)),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    Container(
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 400.0,
                                                      ),
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Text(
                                                        'Para qualquer informação adicional entraremos sempre em contato no número cadastrado.',
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
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  32.0,
                                                                  0.0,
                                                                  2.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'FINALIZAR_COMPRA_FINALIZAR_COMPRA_BTN_ON');
                                                          logFirebaseEvent(
                                                              'Button_custom_action');
                                                          _model.validaEmail =
                                                              await actions
                                                                  .newCustomAction(
                                                            _model.textController2
                                                                            .text !=
                                                                        ''
                                                                ? _model
                                                                    .textController2
                                                                    .text
                                                                : FFAppState()
                                                                    .selectIngresso
                                                                    .firstOrNull!
                                                                    .clienteEmail,
                                                          );
                                                          if (_model
                                                                  .validaEmail ==
                                                              'E-mail verificado com sucesso') {
                                                            if (() {
                                                              if ((FFAppState()
                                                                          .selectIngresso
                                                                          .length >
                                                                      1) &&
                                                                  (FFAppState()
                                                                          .selectIngresso
                                                                          .firstOrNull
                                                                          ?.checkForm ==
                                                                      true)) {
                                                                return true;
                                                              } else if ((FFAppState().selectIngresso.length ==
                                                                      1) &&
                                                                  (_model.textController1.text !=
                                                                          '') &&
                                                                  (_model.textController2.text !=
                                                                          '') &&
                                                                  (_model.textController3
                                                                              .text !=
                                                                          '') &&
                                                                  (_model.textController4
                                                                              .text !=
                                                                          '')) {
                                                                return true;
                                                              } else {
                                                                return false;
                                                              }
                                                            }()) {
                                                              if (FFAppState()
                                                                      .selectIngresso
                                                                      .length <=
                                                                  1) {
                                                                logFirebaseEvent(
                                                                    'Button_update_app_state');
                                                                FFAppState()
                                                                    .updateSelectIngressoAtIndex(
                                                                  0,
                                                                  (e) => e
                                                                    ..clienteNome =
                                                                        _model
                                                                            .textController1
                                                                            .text
                                                                    ..clienteEmail =
                                                                        _model
                                                                            .textController2
                                                                            .text
                                                                    ..clienteCpf =
                                                                        _model
                                                                            .textController3
                                                                            .text
                                                                    ..clienteCelular =
                                                                        _model
                                                                            .textController4
                                                                            .text
                                                                    ..checkForm =
                                                                        true,
                                                                );
                                                                FFAppState()
                                                                    .update(
                                                                        () {});
                                                              }
                                                              logFirebaseEvent(
                                                                  'Button_custom_action');
                                                              _model.validador =
                                                                  await actions
                                                                      .validouCPF(
                                                                FFAppState()
                                                                    .selectIngresso
                                                                    .firstOrNull!
                                                                    .clienteCpf,
                                                              );
                                                              if (_model
                                                                  .validador!) {
                                                                logFirebaseEvent(
                                                                    'Button_update_page_state');
                                                                _model.state =
                                                                    3;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'Button_alert_dialog');
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          AlertDialog(
                                                                        title: Text(
                                                                            'Esse CPF não é válido!'),
                                                                        content:
                                                                            Text('Revise e tente novamente.'),
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
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'Button_alert_dialog');
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Erro!'),
                                                                      content: Text(
                                                                          'Informações faltando. Revise o formulário'),
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
                                                          } else {
                                                            logFirebaseEvent(
                                                                'Button_alert_dialog');
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return WebViewAware(
                                                                  child:
                                                                      AlertDialog(
                                                                    title: Text(
                                                                        'Erro!'),
                                                                    content: Text(
                                                                        _model
                                                                            .validaEmail!),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          }

                                                          safeSetState(() {});
                                                        },
                                                        text:
                                                            'Finalizar Compra',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 200.0,
                                                          height: 50.0,
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
                                                          color:
                                                              Color(0xFF8BC34A),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .poppins(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .white,
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
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 26.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (_model.state == 3)
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: FutureBuilder<LocalRecord>(
                                              future:
                                                  LocalRecord.getDocumentOnce(
                                                      FFAppState()
                                                          .showVisualiza
                                                          .local!),
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

                                                final containerLocalRecord =
                                                    snapshot.data!;

                                                return Container(
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                24.0,
                                                                24.0,
                                                                24.0,
                                                                24.0),
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
                                                                    'FINALIZAR_COMPRA_Icon_j2wsdt42_ON_TAP');
                                                                if (_model.qual !=
                                                                        null &&
                                                                    _model.qual !=
                                                                        '') {
                                                                  logFirebaseEvent(
                                                                      'Icon_update_page_state');
                                                                  _model.qual =
                                                                      null;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'Icon_update_page_state');
                                                                  _model.state =
                                                                      2;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .arrow_circle_left_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 32.0,
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0),
                                                                child: Text(
                                                                  'Informações de Pagamento',
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
                                                                            18.0,
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
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .settings_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              size: 32.0,
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          constraints:
                                                              BoxConstraints(
                                                            maxWidth: 400.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  if ((_model.qual ==
                                                                          'pix') ||
                                                                      (_model.qual ==
                                                                              null ||
                                                                          _model.qual ==
                                                                              ''))
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(6.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children:
                                                                              [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/icons8-foto-48.png',
                                                                                width: 30.0,
                                                                                height: 30.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Text(
                                                                                'PIX',
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.poppins(
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Theme(
                                                                              data: ThemeData(
                                                                                checkboxTheme: CheckboxThemeData(
                                                                                  visualDensity: VisualDensity.compact,
                                                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                  ),
                                                                                ),
                                                                                unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                              child: Checkbox(
                                                                                value: _model.checkboxValue1 ??= _model.qual == 'pix',
                                                                                onChanged: (newValue) async {
                                                                                  safeSetState(() => _model.checkboxValue1 = newValue!);
                                                                                  if (newValue!) {
                                                                                    logFirebaseEvent('FINALIZAR_COMPRA_Checkbox_lsfa21fm_ON_TO');
                                                                                    logFirebaseEvent('Checkbox_update_page_state');
                                                                                    _model.qual = 'pix';
                                                                                    safeSetState(() {});
                                                                                  } else {
                                                                                    logFirebaseEvent('FINALIZAR_COMPRA_Checkbox_lsfa21fm_ON_TO');
                                                                                    logFirebaseEvent('Checkbox_update_page_state');
                                                                                    _model.qual = null;
                                                                                    safeSetState(() {});
                                                                                  }
                                                                                },
                                                                                side: BorderSide(
                                                                                  width: 2,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                                activeColor: FlutterFlowTheme.of(context).primary,
                                                                                checkColor: FlutterFlowTheme.of(context).info,
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 8.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  if ((_model.qual ==
                                                                          'CARTAO') ||
                                                                      (_model.qual ==
                                                                              null ||
                                                                          _model.qual ==
                                                                              ''))
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(6.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children:
                                                                              [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/icons8-carto-48.png',
                                                                                width: 30.0,
                                                                                height: 30.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              'CARTÃO À VISTA',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.poppins(
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                            Theme(
                                                                              data: ThemeData(
                                                                                checkboxTheme: CheckboxThemeData(
                                                                                  visualDensity: VisualDensity.compact,
                                                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                  ),
                                                                                ),
                                                                                unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                              child: Checkbox(
                                                                                value: _model.checkboxValue2 ??= _model.qual == 'CARTAO',
                                                                                onChanged: (newValue) async {
                                                                                  safeSetState(() => _model.checkboxValue2 = newValue!);
                                                                                  if (newValue!) {
                                                                                    logFirebaseEvent('FINALIZAR_COMPRA_Checkbox_2uki12va_ON_TO');
                                                                                    logFirebaseEvent('Checkbox_update_page_state');
                                                                                    _model.qual = 'CARTAO';
                                                                                    safeSetState(() {});
                                                                                  } else {
                                                                                    logFirebaseEvent('FINALIZAR_COMPRA_Checkbox_2uki12va_ON_TO');
                                                                                    logFirebaseEvent('Checkbox_update_page_state');
                                                                                    _model.qual = null;
                                                                                    safeSetState(() {});
                                                                                  }
                                                                                },
                                                                                side: BorderSide(
                                                                                  width: 2,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                                activeColor: FlutterFlowTheme.of(context).primary,
                                                                                checkColor: FlutterFlowTheme.of(context).info,
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 8.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                    tablet:
                                                                        false,
                                                                    tabletLandscape:
                                                                        false,
                                                                    desktop:
                                                                        false,
                                                                  ))
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(6.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children:
                                                                              [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/icons8-carto-48.png',
                                                                                width: 30.0,
                                                                                height: 30.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Text(
                                                                                'CARTÃO PARCELADO',
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.poppins(
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            FFButtonWidget(
                                                                              onPressed: () async {
                                                                                logFirebaseEvent('FINALIZAR_COMPRA_CONCLUIR_E_PAGAR_BTN_ON');
                                                                                if ((_model.textController7.text != '') && (_model.mesEanoTextController.text != '') && (_model.textController9.text != '') && (_model.textController6.text != '')) {
                                                                                  if (_model.venda != null) {
                                                                                    if (_model.qual == 'PARCELADO') {
                                                                                      logFirebaseEvent('Button_backend_call');
                                                                                      _model.fluxoParcelaV = await FluxoDePagamentoCopyCall.call(
                                                                                        metodo: 'PARCELADO',
                                                                                        dataVencimento: dateTimeFormat(
                                                                                          "y-M-d",
                                                                                          getCurrentTimestamp,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        valor: _model.cupom != null ? _model.valorCupom : FFAppState().preVendaTotal,
                                                                                        cartaoNome: _model.textController6.text,
                                                                                        cartaoNumero: _model.textController7.text,
                                                                                        cartaoMes: functions.extrairMes(_model.mesEanoTextController.text),
                                                                                        cartaoAno: '${functions.extrairAno(_model.mesEanoTextController.text)}',
                                                                                        ccv: _model.textController9.text,
                                                                                        titularNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
                                                                                        titularEmail: FFAppState().selectIngresso.firstOrNull?.clienteEmail,
                                                                                        titularCPF: FFAppState().selectIngresso.firstOrNull?.clienteCpf,
                                                                                        cep: FFAppState().cepAutomatico,
                                                                                        enderecoNumero: FFAppState().EnderecoNumAuto,
                                                                                        telefone: FFAppState().selectIngresso.firstOrNull?.clienteCelular,
                                                                                        descricao: FFAppState().showVisualiza.identificador,
                                                                                        referenciaExterna: _model.venda?.reference.id,
                                                                                        clienteNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
                                                                                        numeroParcelas: _model.dropDownwwValue?.toString(),
                                                                                        valorCadaParcela: formatNumber(
                                                                                          (_model.cupom != null ? _model.valorCupom! : FFAppState().preVendaTotal) / (_model.dropDownwwValue!),
                                                                                          formatType: FormatType.decimal,
                                                                                          decimalType: DecimalType.automatic,
                                                                                        ),
                                                                                      );

                                                                                      if ((_model.fluxoParcelaV?.succeeded ?? true)) {
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        await _model.venda!.reference.update(createVendaRecordData(
                                                                                          idPagamento: FluxoDePagamentoCopyCall.idPay(
                                                                                            (_model.fluxoParcelaV?.jsonBody ?? ''),
                                                                                          ),
                                                                                          customerId: FluxoDePagamentoCopyCall.customID(
                                                                                            (_model.fluxoParcelaV?.jsonBody ?? ''),
                                                                                          ),
                                                                                          valorPlataforma: (functions.conversorString(FluxoDePagamentoCopyCall.valorBruto(
                                                                                                (_model.fluxoParcelaV?.jsonBody ?? ''),
                                                                                              )!)!) -
                                                                                              (functions.conversorString(FluxoDePagamentoCopyCall.valorLiquido(
                                                                                                (_model.fluxoParcelaV?.jsonBody ?? ''),
                                                                                              )!)!),
                                                                                          parcelamento: _model.parcelamento?.reference,
                                                                                        ));
                                                                                        logFirebaseEvent('Button_navigate_to');

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
                                                                                              FluxoDePagamentoCopyCall.idPay(
                                                                                                (_model.fluxoParcelaV?.jsonBody ?? ''),
                                                                                              ),
                                                                                              ParamType.String,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      } else {
                                                                                        logFirebaseEvent('Button_alert_dialog');
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('Erro!'),
                                                                                                content: Text('${(_model.fluxoParcelaV?.bodyText ?? '')}. Tente Novamente'),
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
                                                                                      logFirebaseEvent('Button_backend_call');
                                                                                      _model.fluxoCardV = await FluxoDePagamentoCall.call(
                                                                                        metodo: 'CARTAO',
                                                                                        dataVencimento: dateTimeFormat(
                                                                                          "y-M-d",
                                                                                          getCurrentTimestamp,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        valor: _model.cupom != null ? _model.valorCupom : FFAppState().preVendaTotal,
                                                                                        cartaoNome: _model.textController6.text,
                                                                                        cartaoNumero: _model.textController7.text,
                                                                                        cartaoMes: functions.extrairMes(_model.mesEanoTextController.text),
                                                                                        cartaoAno: '${'20${functions.extrairAno(_model.mesEanoTextController.text)}'}',
                                                                                        ccv: _model.textController9.text,
                                                                                        titularNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
                                                                                        titularEmail: FFAppState().selectIngresso.firstOrNull?.clienteEmail,
                                                                                        titularCPF: FFAppState().selectIngresso.firstOrNull?.clienteCpf,
                                                                                        cep: FFAppState().cepAutomatico,
                                                                                        enderecoNumero: FFAppState().EnderecoNumAuto,
                                                                                        telefone: FFAppState().selectIngresso.firstOrNull?.clienteCelular,
                                                                                        descricao: FFAppState().showVisualiza.identificador,
                                                                                        referenciaExterna: _model.venda?.reference.id,
                                                                                        clienteNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
                                                                                      );

                                                                                      if ((_model.fluxoCardV?.succeeded ?? true)) {
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        await _model.venda!.reference.update(createVendaRecordData(
                                                                                          idPagamento: FluxoDePagamentoCall.idPay(
                                                                                            (_model.fluxoCardV?.jsonBody ?? ''),
                                                                                          ),
                                                                                          customerId: FluxoDePagamentoCall.customID(
                                                                                            (_model.fluxoCardV?.jsonBody ?? ''),
                                                                                          ),
                                                                                          valorPlataforma: (functions.conversorString(FluxoDePagamentoCall.valorBruto(
                                                                                                (_model.fluxoCardV?.jsonBody ?? ''),
                                                                                              )!)!) -
                                                                                              (functions.conversorString(FluxoDePagamentoCall.valorLiquido(
                                                                                                (_model.fluxoCardV?.jsonBody ?? ''),
                                                                                              )!)!),
                                                                                        ));
                                                                                        logFirebaseEvent('Button_navigate_to');

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
                                                                                                (_model.fluxoCardV?.jsonBody ?? ''),
                                                                                              ),
                                                                                              ParamType.String,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      } else {
                                                                                        logFirebaseEvent('Button_alert_dialog');
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('Erro!'),
                                                                                                content: Text('${(_model.fluxoCardV?.bodyText ?? '')}. Tente Novamente'),
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
                                                                                    }
                                                                                  } else {
                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                    var vendaRecordReference = VendaRecord.collection.doc();
                                                                                    await vendaRecordReference.set(createVendaRecordData(
                                                                                      show: FFAppState().showVisualiza.docReferencia,
                                                                                      clienteNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
                                                                                      clienteCelular: FFAppState().selectIngresso.firstOrNull?.clienteCelular,
                                                                                      clienteCpf: FFAppState().selectIngresso.firstOrNull?.clienteCpf,
                                                                                      idreferencia: random_data.randomString(
                                                                                        5,
                                                                                        10,
                                                                                        true,
                                                                                        false,
                                                                                        false,
                                                                                      ),
                                                                                      status: 'Pendente',
                                                                                      valorTotal: _model.cupom != null ? _model.valorCupom : FFAppState().preVendaTotal,
                                                                                      valorReceber: _model.cupom != null ? ((_model.valorCupom!) - ((_model.valorCupom!) * 15 / 100)) : FFAppState().preVendaRecebe,
                                                                                      dataShow: FFAppState().dataDetalhes,
                                                                                      endereco: containerLocalRecord.endereco,
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
                                                                                      localEndereco: containerLocalRecord.endereco,
                                                                                      clienteEmail: FFAppState().selectIngresso.firstOrNull?.clienteEmail,
                                                                                      showid: FFAppState().showVisualiza.docReferencia?.id,
                                                                                      tipoPagamento: _model.qual,
                                                                                      cupomDesconto: _model.cupom?.reference,
                                                                                      preVenda: FFAppState().prevenda,
                                                                                      data: getCurrentTimestamp,
                                                                                      dataEvento: FFAppState().dataSelectNew.date,
                                                                                    ));
                                                                                    _model.vendaCard = VendaRecord.getDocumentFromData(
                                                                                        createVendaRecordData(
                                                                                          show: FFAppState().showVisualiza.docReferencia,
                                                                                          clienteNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
                                                                                          clienteCelular: FFAppState().selectIngresso.firstOrNull?.clienteCelular,
                                                                                          clienteCpf: FFAppState().selectIngresso.firstOrNull?.clienteCpf,
                                                                                          idreferencia: random_data.randomString(
                                                                                            5,
                                                                                            10,
                                                                                            true,
                                                                                            false,
                                                                                            false,
                                                                                          ),
                                                                                          status: 'Pendente',
                                                                                          valorTotal: _model.cupom != null ? _model.valorCupom : FFAppState().preVendaTotal,
                                                                                          valorReceber: _model.cupom != null ? ((_model.valorCupom!) - ((_model.valorCupom!) * 15 / 100)) : FFAppState().preVendaRecebe,
                                                                                          dataShow: FFAppState().dataDetalhes,
                                                                                          endereco: containerLocalRecord.endereco,
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
                                                                                          localEndereco: containerLocalRecord.endereco,
                                                                                          clienteEmail: FFAppState().selectIngresso.firstOrNull?.clienteEmail,
                                                                                          showid: FFAppState().showVisualiza.docReferencia?.id,
                                                                                          tipoPagamento: _model.qual,
                                                                                          cupomDesconto: _model.cupom?.reference,
                                                                                          preVenda: FFAppState().prevenda,
                                                                                          data: getCurrentTimestamp,
                                                                                          dataEvento: FFAppState().dataSelectNew.date,
                                                                                        ),
                                                                                        vendaRecordReference);
                                                                                    logFirebaseEvent('Button_update_page_state');
                                                                                    _model.atual = 0;
                                                                                    _model.total = FFAppState().selectIngresso.length;
                                                                                    _model.venda = _model.vendaCard;
                                                                                    safeSetState(() {});
                                                                                    while (_model.atual! < _model.total!) {
                                                                                      logFirebaseEvent('Button_backend_call');

                                                                                      var selectIngressoRecordReference = SelectIngressoRecord.collection.doc();
                                                                                      await selectIngressoRecordReference.set(createSelectIngressoRecordData(
                                                                                        ingresso: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.ingresso,
                                                                                        quantdd: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.quantdd,
                                                                                        salvo: false,
                                                                                        id: random_data.randomString(
                                                                                          6,
                                                                                          12,
                                                                                          true,
                                                                                          false,
                                                                                          false,
                                                                                        ),
                                                                                        prevenda: FFAppState().prevenda,
                                                                                        clienteNome: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.clienteNome,
                                                                                        clienteEmail: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.clienteEmail,
                                                                                        clienteCpf: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.clienteCpf,
                                                                                        clienteCelular: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.clienteCelular,
                                                                                        checkForm: true,
                                                                                        subTotal: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.subTotal,
                                                                                        dataShow: FFAppState().dataDetalhes,
                                                                                        ingressoNome: FFAppState().ingressosSelectNew.where((e) => e.referencia == FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.ingresso).toList().firstOrNull?.nome,
                                                                                        show: FFAppState().showVisualiza.docReferencia,
                                                                                        venda: _model.vendaCard?.reference,
                                                                                        dataEvento: FFAppState().dataSelectNew.date,
                                                                                        valorReceber: _model.vendaCard!.valorReceber / FFAppState().selectIngresso.length,
                                                                                        dataCriacao: getCurrentTimestamp,
                                                                                      ));
                                                                                      _model.selectdoidsq = SelectIngressoRecord.getDocumentFromData(
                                                                                          createSelectIngressoRecordData(
                                                                                            ingresso: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.ingresso,
                                                                                            quantdd: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.quantdd,
                                                                                            salvo: false,
                                                                                            id: random_data.randomString(
                                                                                              6,
                                                                                              12,
                                                                                              true,
                                                                                              false,
                                                                                              false,
                                                                                            ),
                                                                                            prevenda: FFAppState().prevenda,
                                                                                            clienteNome: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.clienteNome,
                                                                                            clienteEmail: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.clienteEmail,
                                                                                            clienteCpf: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.clienteCpf,
                                                                                            clienteCelular: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.clienteCelular,
                                                                                            checkForm: true,
                                                                                            subTotal: FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.subTotal,
                                                                                            dataShow: FFAppState().dataDetalhes,
                                                                                            ingressoNome: FFAppState().ingressosSelectNew.where((e) => e.referencia == FFAppState().selectIngresso.elementAtOrNull(_model.atual!)?.ingresso).toList().firstOrNull?.nome,
                                                                                            show: FFAppState().showVisualiza.docReferencia,
                                                                                            venda: _model.vendaCard?.reference,
                                                                                            dataEvento: FFAppState().dataSelectNew.date,
                                                                                            valorReceber: _model.vendaCard!.valorReceber / FFAppState().selectIngresso.length,
                                                                                            dataCriacao: getCurrentTimestamp,
                                                                                          ),
                                                                                          selectIngressoRecordReference);
                                                                                      logFirebaseEvent('Button_update_page_state');
                                                                                      _model.atual = _model.atual! + 1;
                                                                                      _model.addToRefSelectIngresso(_model.selectdoidsq!.reference);
                                                                                      safeSetState(() {});
                                                                                    }
                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                    await _model.vendaCard!.reference.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'ingressos_venda': _model.refSelectIngresso,
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                    if (_model.qual == 'PARCELADO') {
                                                                                      logFirebaseEvent('Button_backend_call');

                                                                                      var parcelametoRecordReference = ParcelametoRecord.collection.doc();
                                                                                      await parcelametoRecordReference.set(createParcelametoRecordData(
                                                                                        quantidadeParcelada: _model.dropDownwwValue,
                                                                                        valorCadaParcela: (_model.cupom != null ? _model.valorCupom! : FFAppState().preVendaTotal) / (_model.dropDownwwValue!),
                                                                                        venda: _model.vendaCard?.idreferencia,
                                                                                      ));
                                                                                      _model.parcela = ParcelametoRecord.getDocumentFromData(
                                                                                          createParcelametoRecordData(
                                                                                            quantidadeParcelada: _model.dropDownwwValue,
                                                                                            valorCadaParcela: (_model.cupom != null ? _model.valorCupom! : FFAppState().preVendaTotal) / (_model.dropDownwwValue!),
                                                                                            venda: _model.vendaCard?.idreferencia,
                                                                                          ),
                                                                                          parcelametoRecordReference);
                                                                                      logFirebaseEvent('Button_update_page_state');
                                                                                      _model.parcelamento = _model.parcela;
                                                                                      safeSetState(() {});
                                                                                      logFirebaseEvent('Button_custom_action');
                                                                                      await actions.gerarPDFVenda(
                                                                                        _model.vendaCard!.idreferencia,
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
                                                                                        containerLocalRecord.endereco,
                                                                                        _model.vendaCard!.clienteNome,
                                                                                        'https://47f3ca26be7b17a1a8f0f7c152bcc1c2.cdn.bubble.io/f1706454459056x639312497508886100/comedia8png.png',
                                                                                        _model.refSelectIngresso.toList(),
                                                                                        _model.vendaCard!.reference,
                                                                                        'Ingresso${_model.vendaCard?.idreferencia}',
                                                                                      );
                                                                                      logFirebaseEvent('Button_backend_call');
                                                                                      _model.fluxoParcela = await FluxoDePagamentoCopyCall.call(
                                                                                        metodo: 'PARCELADO',
                                                                                        dataVencimento: dateTimeFormat(
                                                                                          "y-M-d",
                                                                                          getCurrentTimestamp,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        valor: _model.cupom != null ? _model.valorCupom : FFAppState().preVendaTotal,
                                                                                        cartaoNome: _model.textController6.text,
                                                                                        cartaoNumero: _model.textController7.text,
                                                                                        cartaoMes: functions.extrairMes(_model.mesEanoTextController.text),
                                                                                        cartaoAno: '${functions.extrairAno(_model.mesEanoTextController.text)}',
                                                                                        ccv: _model.textController9.text,
                                                                                        titularNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
                                                                                        titularEmail: FFAppState().selectIngresso.firstOrNull?.clienteEmail,
                                                                                        titularCPF: FFAppState().selectIngresso.firstOrNull?.clienteCpf,
                                                                                        cep: FFAppState().cepAutomatico,
                                                                                        enderecoNumero: FFAppState().EnderecoNumAuto,
                                                                                        telefone: FFAppState().selectIngresso.firstOrNull?.clienteCelular,
                                                                                        descricao: FFAppState().showVisualiza.identificador,
                                                                                        referenciaExterna: _model.vendaCard?.reference.id,
                                                                                        clienteNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
                                                                                        numeroParcelas: _model.dropDownwwValue?.toString(),
                                                                                        valorCadaParcela: formatNumber(
                                                                                          (_model.cupom != null ? _model.valorCupom! : FFAppState().preVendaTotal) / (_model.dropDownwwValue!),
                                                                                          formatType: FormatType.decimal,
                                                                                          decimalType: DecimalType.automatic,
                                                                                        ),
                                                                                      );

                                                                                      if ((_model.fluxoParcela?.succeeded ?? true)) {
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        await _model.vendaCard!.reference.update(createVendaRecordData(
                                                                                          idPagamento: FluxoDePagamentoCopyCall.idPay(
                                                                                            (_model.fluxoParcela?.jsonBody ?? ''),
                                                                                          ),
                                                                                          customerId: FluxoDePagamentoCopyCall.customID(
                                                                                            (_model.fluxoParcela?.jsonBody ?? ''),
                                                                                          ),
                                                                                          valorPlataforma: (functions.conversorString(FluxoDePagamentoCopyCall.valorBruto(
                                                                                                (_model.fluxoParcela?.jsonBody ?? ''),
                                                                                              )!)!) -
                                                                                              (functions.conversorString(FluxoDePagamentoCopyCall.valorLiquido(
                                                                                                (_model.fluxoParcela?.jsonBody ?? ''),
                                                                                              )!)!),
                                                                                          parcelamento: _model.parcela?.reference,
                                                                                        ));
                                                                                        logFirebaseEvent('Button_navigate_to');

                                                                                        context.pushNamed(
                                                                                          RetornoWidget.routeName,
                                                                                          queryParameters: {
                                                                                            'show': serializeParam(
                                                                                              FFAppState().showVisualiza.identificador,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'venda': serializeParam(
                                                                                              _model.vendaCard?.reference,
                                                                                              ParamType.DocumentReference,
                                                                                            ),
                                                                                            'pagamento': serializeParam(
                                                                                              'CARTAO',
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'idpay': serializeParam(
                                                                                              FluxoDePagamentoCopyCall.idPay(
                                                                                                (_model.fluxoParcela?.jsonBody ?? ''),
                                                                                              ),
                                                                                              ParamType.String,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      } else {
                                                                                        logFirebaseEvent('Button_alert_dialog');
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('Erro!'),
                                                                                                content: Text('${(_model.fluxoParcela?.bodyText ?? '')}. Tente Novamente'),
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
                                                                                      logFirebaseEvent('Button_custom_action');
                                                                                      await actions.gerarPDFVenda(
                                                                                        _model.vendaCard!.idreferencia,
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
                                                                                        containerLocalRecord.endereco,
                                                                                        _model.vendaCard!.clienteNome,
                                                                                        'https://47f3ca26be7b17a1a8f0f7c152bcc1c2.cdn.bubble.io/f1706454459056x639312497508886100/comedia8png.png',
                                                                                        _model.refSelectIngresso.toList(),
                                                                                        _model.vendaCard!.reference,
                                                                                        'Ingresso${_model.vendaCard?.idreferencia}',
                                                                                      );
                                                                                      logFirebaseEvent('Button_backend_call');
                                                                                      _model.fluxoCard = await FluxoDePagamentoCall.call(
                                                                                        metodo: 'CARTAO',
                                                                                        dataVencimento: dateTimeFormat(
                                                                                          "y-M-d",
                                                                                          getCurrentTimestamp,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        valor: _model.cupom != null ? _model.valorCupom : FFAppState().preVendaTotal,
                                                                                        cartaoNome: _model.textController6.text,
                                                                                        cartaoNumero: _model.textController7.text,
                                                                                        cartaoMes: functions.extrairMes(_model.mesEanoTextController.text),
                                                                                        cartaoAno: '${'20${functions.extrairAno(_model.mesEanoTextController.text)}'}',
                                                                                        ccv: _model.textController9.text,
                                                                                        titularNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
                                                                                        titularEmail: FFAppState().selectIngresso.firstOrNull?.clienteEmail,
                                                                                        titularCPF: FFAppState().selectIngresso.firstOrNull?.clienteCpf,
                                                                                        cep: FFAppState().cepAutomatico,
                                                                                        enderecoNumero: FFAppState().EnderecoNumAuto,
                                                                                        telefone: FFAppState().selectIngresso.firstOrNull?.clienteCelular,
                                                                                        descricao: FFAppState().showVisualiza.identificador,
                                                                                        referenciaExterna: _model.vendaCard?.reference.id,
                                                                                        clienteNome: FFAppState().selectIngresso.firstOrNull?.clienteNome,
                                                                                      );

                                                                                      if ((_model.fluxoCard?.succeeded ?? true)) {
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        await _model.vendaCard!.reference.update(createVendaRecordData(
                                                                                          idPagamento: FluxoDePagamentoCall.idPay(
                                                                                            (_model.fluxoCard?.jsonBody ?? ''),
                                                                                          ),
                                                                                          customerId: FluxoDePagamentoCall.customID(
                                                                                            (_model.fluxoCard?.jsonBody ?? ''),
                                                                                          ),
                                                                                          valorPlataforma: (functions.conversorString(FluxoDePagamentoCall.valorBruto(
                                                                                                (_model.fluxoCard?.jsonBody ?? ''),
                                                                                              )!)!) -
                                                                                              (functions.conversorString(FluxoDePagamentoCall.valorLiquido(
                                                                                                (_model.fluxoCard?.jsonBody ?? ''),
                                                                                              )!)!),
                                                                                        ));
                                                                                        logFirebaseEvent('Button_navigate_to');

                                                                                        context.pushNamed(
                                                                                          RetornoWidget.routeName,
                                                                                          queryParameters: {
                                                                                            'show': serializeParam(
                                                                                              FFAppState().showVisualiza.slug,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'venda': serializeParam(
                                                                                              _model.vendaCard?.reference,
                                                                                              ParamType.DocumentReference,
                                                                                            ),
                                                                                            'pagamento': serializeParam(
                                                                                              'CARTAO',
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'idpay': serializeParam(
                                                                                              FluxoDePagamentoCall.idPay(
                                                                                                (_model.fluxoCard?.jsonBody ?? ''),
                                                                                              ),
                                                                                              ParamType.String,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      } else {
                                                                                        logFirebaseEvent('Button_alert_dialog');
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('Erro!'),
                                                                                                content: Text('${(_model.fluxoCard?.bodyText ?? '')}. Tente Novamente'),
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
                                                                                    }
                                                                                  }
                                                                                } else {
                                                                                  logFirebaseEvent('Button_alert_dialog');
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return WebViewAware(
                                                                                        child: AlertDialog(
                                                                                          title: Text('Erro!'),
                                                                                          content: Text('Preencha as informações para o pagamento.'),
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

                                                                                safeSetState(() {});
                                                                              },
                                                                              text: 'Concluir e Pagar',
                                                                              options: FFButtonOptions(
                                                                                width: 200.0,
                                                                                height: 50.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: Color(0xFF8BC34A),
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      font: GoogleFonts.poppins(
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                      color: Colors.white,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                    ),
                                                                                elevation: 3.0,
                                                                                borderSide: BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                              ),
                                                                            ),
                                                                            Theme(
                                                                              data: ThemeData(
                                                                                checkboxTheme: CheckboxThemeData(
                                                                                  visualDensity: VisualDensity.compact,
                                                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                  ),
                                                                                ),
                                                                                unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                              child: Checkbox(
                                                                                value: _model.checkboxValue3 ??= _model.qual == 'PARCELADO',
                                                                                onChanged: (newValue) async {
                                                                                  safeSetState(() => _model.checkboxValue3 = newValue!);
                                                                                  if (newValue!) {
                                                                                    logFirebaseEvent('FINALIZAR_COMPRA_Checkbox_qlurbcf9_ON_TO');
                                                                                    logFirebaseEvent('Checkbox_update_page_state');
                                                                                    _model.qual = 'PARCELADO';
                                                                                    safeSetState(() {});
                                                                                  } else {
                                                                                    logFirebaseEvent('FINALIZAR_COMPRA_Checkbox_qlurbcf9_ON_TO');
                                                                                    logFirebaseEvent('Checkbox_update_page_state');
                                                                                    _model.qual = null;
                                                                                    safeSetState(() {});
                                                                                  }
                                                                                },
                                                                                side: BorderSide(
                                                                                  width: 2,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                                activeColor: FlutterFlowTheme.of(context).primary,
                                                                                checkColor: FlutterFlowTheme.of(context).info,
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 8.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        22.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  if (FFAppState()
                                                                          .selectIngresso
                                                                          .length ==
                                                                      1)
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Theme(
                                                                          data:
                                                                              ThemeData(
                                                                            checkboxTheme:
                                                                                CheckboxThemeData(
                                                                              visualDensity: VisualDensity.compact,
                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            unselectedWidgetColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                          child:
                                                                              Checkbox(
                                                                            value: _model.checkboxCupomValue ??=
                                                                                false,
                                                                            onChanged:
                                                                                (newValue) async {
                                                                              safeSetState(() => _model.checkboxCupomValue = newValue!);
                                                                            },
                                                                            side:
                                                                                BorderSide(
                                                                              width: 2,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            activeColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            checkColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            'Cupom de Desconto',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.poppins(
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  if (_model
                                                                          .checkboxCupomValue ??
                                                                      true)
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(6.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            2.0,
                                                                            10.0,
                                                                            2.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children:
                                                                              [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/cupom.png',
                                                                                width: 30.0,
                                                                                height: 30.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Container(
                                                                                width: 200.0,
                                                                                child: TextFormField(
                                                                                  controller: _model.textFieldCupomTextController,
                                                                                  focusNode: _model.textFieldCupomFocusNode,
                                                                                  autofocus: false,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    isDense: true,
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                          ),
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                          ),
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    filled: true,
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                  validator: _model.textFieldCupomTextControllerValidator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            FFButtonWidget(
                                                                              onPressed: () async {
                                                                                logFirebaseEvent('FINALIZAR_COMPRA_PAGE_APLICAR_BTN_ON_TAP');
                                                                                logFirebaseEvent('Button_firestore_query');
                                                                                _model.cupomVenda = await queryCupomRecordOnce(
                                                                                  queryBuilder: (cupomRecord) => cupomRecord.where(
                                                                                    'nome',
                                                                                    isEqualTo: _model.textFieldCupomTextController.text,
                                                                                  ),
                                                                                  singleRecord: true,
                                                                                ).then((s) => s.firstOrNull);
                                                                                if (_model.cupomVenda?.reference != null) {
                                                                                  if (_model.cupomVenda!.quantidadeRestante >= 1) {
                                                                                    if (_model.cupomVenda?.tipoUso == 'Ingresso') {
                                                                                      if (FFAppState().selectIngresso.firstOrNull?.ingresso == _model.cupomVenda?.ingresso) {
                                                                                        logFirebaseEvent('Button_update_page_state');
                                                                                        _model.cupom = _model.cupomVenda;
                                                                                        _model.valorCupom = _model.cupomVenda?.tipo == 'Percentual' ? (((FFAppState().preVendaTotal - (FFAppState().preVendaTotal * 15 / 100) - (FFAppState().preVendaTotal * _model.cupom!.valor / 100)) * 15 / 100) + (FFAppState().preVendaTotal - (FFAppState().preVendaTotal * 15 / 100) - (FFAppState().preVendaTotal * _model.cupom!.valor / 100))) : (((FFAppState().preVendaTotal - (FFAppState().preVendaTotal * 15 / 100)) - _model.cupomVenda!.valor) * 15 / 100 + ((FFAppState().preVendaTotal - (FFAppState().preVendaTotal * 15 / 100)) - _model.cupomVenda!.valor));
                                                                                        safeSetState(() {});
                                                                                      } else {
                                                                                        logFirebaseEvent('Button_alert_dialog');
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('Erro!'),
                                                                                                content: Text('Cupom não é válido para este ingresso'),
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
                                                                                      if (containerLocalRecord.reference == _model.cupomVenda?.local) {
                                                                                        logFirebaseEvent('Button_update_page_state');
                                                                                        _model.cupom = _model.cupomVenda;
                                                                                        _model.valorCupom = _model.cupomVenda?.tipo == 'Percentual' ? (((FFAppState().preVendaTotal - (FFAppState().preVendaTotal * 15 / 100) - (FFAppState().preVendaTotal * _model.cupom!.valor / 100)) * 15 / 100) + (FFAppState().preVendaTotal - (FFAppState().preVendaTotal * 15 / 100) - (FFAppState().preVendaTotal * _model.cupom!.valor / 100))) : (((FFAppState().preVendaTotal - (FFAppState().preVendaTotal * 15 / 100)) - _model.cupomVenda!.valor) * 15 / 100 + ((FFAppState().preVendaTotal - (FFAppState().preVendaTotal * 15 / 100)) - _model.cupomVenda!.valor));
                                                                                        safeSetState(() {});
                                                                                      } else {
                                                                                        logFirebaseEvent('Button_alert_dialog');
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('Erro!'),
                                                                                                content: Text('Cupom não é válido para este local'),
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
                                                                                    }
                                                                                  } else {
                                                                                    logFirebaseEvent('Button_alert_dialog');
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return WebViewAware(
                                                                                          child: AlertDialog(
                                                                                            title: Text('Erro!'),
                                                                                            content: Text('Cupom expirado ou inativo'),
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
                                                                                  logFirebaseEvent('Button_alert_dialog');
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return WebViewAware(
                                                                                        child: AlertDialog(
                                                                                          title: Text('Erro!'),
                                                                                          content: Text('Nenhum Cupom Encontrado'),
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

                                                                                safeSetState(() {});
                                                                              },
                                                                              text: _model.cupom != null ? 'Cupom Aplicado' : 'Aplicar',
                                                                              options: FFButtonOptions(
                                                                                height: 35.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: _model.cupom != null ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryText,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      font: GoogleFonts.poppins(
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                      color: Colors.white,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 8.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              if (_model.qual ==
                                                                  'pix')
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'FINALIZAR_COMPRA_PAGE_PAGAR_BTN_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Button_bottom_sheet');
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
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: CarregaWidget(
                                                                                local: containerLocalRecord,
                                                                                type: 'pix',
                                                                                cupom: _model.cupom,
                                                                                valorCupom: _model.valorCupom,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  text: _model
                                                                          .carregando
                                                                      ? 'Carregando...'
                                                                      : 'PAGAR!!',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .corMenu,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24.0),
                                                                  ),
                                                                ),
                                                            ].divide(SizedBox(
                                                                height: 22.0)),
                                                          ),
                                                        ),
                                                        if ((_model.qual ==
                                                                'CARTAO') ||
                                                            (_model.qual ==
                                                                'PARCELADO'))
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              TextFormField(
                                                                controller: _model
                                                                    .textController6,
                                                                focusNode: _model
                                                                    .textFieldFocusNode5,
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Nome no Cartão (Igual ao Cartão)',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                                validator: _model
                                                                    .textController6Validator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                              TextFormField(
                                                                controller: _model
                                                                    .textController7,
                                                                focusNode: _model
                                                                    .textFieldFocusNode6,
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Número do Cartão',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                                validator: _model
                                                                    .textController7Validator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .mesEanoTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .mesEanoFocusNode,
                                                                      autofocus:
                                                                          true,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'MM/AA',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
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
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      validator: _model
                                                                          .mesEanoTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                      inputFormatters: [
                                                                        _model
                                                                            .mesEanoMask
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          100.0,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.textController9,
                                                                        focusNode:
                                                                            _model.textFieldFocusNode7,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              'CVV',
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                font: GoogleFonts.poppins(
                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                font: GoogleFonts.poppins(
                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                        validator: _model
                                                                            .textController9Validator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                              if (_model.qual ==
                                                                  'PARCELADO')
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child: FlutterFlowDropDown<
                                                                          int>(
                                                                        controller:
                                                                            _model.dropDownwwValueController ??=
                                                                                FormFieldController<int>(
                                                                          _model.dropDownwwValue ??=
                                                                              1,
                                                                        ),
                                                                        options:
                                                                            List<int>.from([
                                                                          1,
                                                                          2
                                                                        ]),
                                                                        optionLabels: [
                                                                          '1x',
                                                                          '2x'
                                                                        ],
                                                                        onChanged:
                                                                            (val) =>
                                                                                safeSetState(() => _model.dropDownwwValue = val),
                                                                        width:
                                                                            200.0,
                                                                        height:
                                                                            54.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                        hintText:
                                                                            'Quantidade de Parcelas',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        borderWidth:
                                                                            2.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        isOverButton:
                                                                            false,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            55.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Valor das Parcelas',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.poppins(
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  formatNumber(
                                                                                    FFAppState().preVendaTotal / (_model.dropDownwwValue!),
                                                                                    formatType: FormatType.decimal,
                                                                                    decimalType: DecimalType.automatic,
                                                                                    currency: 'R\$',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.poppins(
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          16.0)),
                                                                ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            32.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'FINALIZAR_COMPRA_CONCLUIR_E_PAGAR_BTN_ON');
                                                                    logFirebaseEvent(
                                                                        'Button_bottom_sheet');
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
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: CarregaWidget(
                                                                                local: containerLocalRecord,
                                                                                type: 'cartao',
                                                                                cupom: _model.cupom,
                                                                                valorCupom: _model.valorCupom,
                                                                                cartaoNome: _model.textController6.text,
                                                                                cartaoNumero: _model.textController7.text,
                                                                                mesAno: _model.mesEanoTextController.text,
                                                                                ccv: _model.textController9.text,
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
                                                                      'Concluir e Pagar',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width:
                                                                        200.0,
                                                                    height:
                                                                        50.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: Color(
                                                                        0xFF8BC34A),
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
                                                                        3.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 16.0)),
                                                          ),
                                                      ].divide(SizedBox(
                                                          height: 22.0)),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
