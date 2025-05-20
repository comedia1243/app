import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cadastro_data_pec_model.dart';
export 'cadastro_data_pec_model.dart';

class CadastroDataPecWidget extends StatefulWidget {
  const CadastroDataPecWidget({super.key});

  @override
  State<CadastroDataPecWidget> createState() => _CadastroDataPecWidgetState();
}

class _CadastroDataPecWidgetState extends State<CadastroDataPecWidget> {
  late CadastroDataPecModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadastroDataPecModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

    _model.textFieldValorCupomTextController ??= TextEditingController();
    _model.textFieldValorCupomFocusNode ??= FocusNode();

    _model.textFieldQuantCupomTextController ??= TextEditingController();
    _model.textFieldQuantCupomFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textController6?.text = '1';
        }));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
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
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('CADASTRO_DATA_PEC_Row_j2e0ve3t_ON_TAP');
                  if (FFAppState().cadastrandoShow != null) {
                    if (_model.dataselect != null) {
                      logFirebaseEvent('Row_update_component_state');
                      _model.abrir = !_model.abrir;
                      safeSetState(() {});
                    } else {
                      logFirebaseEvent('Row_date_time_picker');
                      final _datePicked1Date = await showDatePicker(
                        context: context,
                        initialDate: getCurrentTimestamp,
                        firstDate: (getCurrentTimestamp ?? DateTime(1900)),
                        lastDate: DateTime(2050),
                        builder: (context, child) {
                          return wrapInMaterialDatePickerTheme(
                            context,
                            child!,
                            headerBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            headerForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            headerTextStyle: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontStyle,
                                  ),
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                            pickerBackgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            pickerForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            selectedDateTimeBackgroundColor:
                                FlutterFlowTheme.of(context).corMenu,
                            selectedDateTimeForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            actionButtonForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            iconSize: 24.0,
                          );
                        },
                      );

                      TimeOfDay? _datePicked1Time;
                      if (_datePicked1Date != null) {
                        _datePicked1Time = await showTimePicker(
                          context: context,
                          initialTime:
                              TimeOfDay.fromDateTime(getCurrentTimestamp),
                          builder: (context, child) {
                            return wrapInMaterialTimePickerTheme(
                              context,
                              child!,
                              headerBackgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              headerForegroundColor:
                                  FlutterFlowTheme.of(context).info,
                              headerTextStyle: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .fontStyle,
                                    ),
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontStyle,
                                  ),
                              pickerBackgroundColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              pickerForegroundColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              selectedDateTimeBackgroundColor:
                                  FlutterFlowTheme.of(context).corMenu,
                              selectedDateTimeForegroundColor:
                                  FlutterFlowTheme.of(context).info,
                              actionButtonForegroundColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 24.0,
                            );
                          },
                        );
                      }

                      if (_datePicked1Date != null &&
                          _datePicked1Time != null) {
                        safeSetState(() {
                          _model.datePicked1 = DateTime(
                            _datePicked1Date.year,
                            _datePicked1Date.month,
                            _datePicked1Date.day,
                            _datePicked1Time!.hour,
                            _datePicked1Time.minute,
                          );
                        });
                      } else if (_model.datePicked1 != null) {
                        safeSetState(() {
                          _model.datePicked1 = getCurrentTimestamp;
                        });
                      }
                      logFirebaseEvent('Row_update_component_state');
                      _model.dataselect = _model.datePicked1;
                      safeSetState(() {});
                      logFirebaseEvent('Row_update_component_state');
                      _model.abrir = !_model.abrir;
                      safeSetState(() {});
                    }
                  } else {
                    logFirebaseEvent('Row_alert_dialog');
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return WebViewAware(
                          child: AlertDialog(
                            title: Text('Ops!'),
                            content: Text(
                                'Conclua a etapa anterior para prosseguir.'),
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
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (_model.datacriada.length > 0)
                            Icon(
                              Icons.check_circle,
                              color: FlutterFlowTheme.of(context).success,
                              size: 32.0,
                            ),
                          if (_model.datacriada.length == 0)
                            Icon(
                              Icons.circle_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 32.0,
                            ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '- Configurações das Datas e Ingressos',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                    if (_model.abrir)
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 32.0,
                      ),
                    if (!_model.abrir)
                      Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                  ],
                ),
              ),
              if (_model.abrir)
                StreamBuilder<ShowsRecord>(
                  stream:
                      ShowsRecord.getDocument(FFAppState().cadastrandoShow!),
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

                    final containerShowsRecord = snapshot.data!;

                    return Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Adicione abaixo as informações do ingresso do dia ${valueOrDefault<String>(
                                      dateTimeFormat(
                                        "d/M/y, H:m",
                                        _model.dataselect,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      '24/04/2024',
                                    )}',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  TextFormField(
                                    controller: _model.textController1,
                                    focusNode: _model.textFieldFocusNode1,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Nome / Tipo do Ingresso',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                    ),
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
                                    validator: _model.textController1Validator
                                        .asValidator(context),
                                  ),
                                  TextFormField(
                                    controller: _model.textController2,
                                    focusNode: _model.textFieldFocusNode2,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Descrição (Opcional)',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                    ),
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
                                    keyboardType: TextInputType.multiline,
                                    validator: _model.textController2Validator
                                        .asValidator(context),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController3,
                                          focusNode: _model.textFieldFocusNode3,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Valor na Bilheteria',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
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
                                          keyboardType: const TextInputType
                                              .numberWithOptions(decimal: true),
                                          validator: _model
                                              .textController3Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController4,
                                          focusNode: _model.textFieldFocusNode4,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Valor Promocional',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
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
                                          keyboardType: const TextInputType
                                              .numberWithOptions(decimal: true),
                                          validator: _model
                                              .textController4Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(),
                                          child: TextFormField(
                                            controller: _model.textController5,
                                            focusNode:
                                                _model.textFieldFocusNode5,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Quantidade de Ingressos',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
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
                                            keyboardType: TextInputType.number,
                                            validator: _model
                                                .textController5Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 100.0,
                                        decoration: BoxDecoration(),
                                        child: Stack(
                                          children: [
                                            TextFormField(
                                              controller:
                                                  _model.textController6,
                                              focusNode:
                                                  _model.textFieldFocusNode6,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                              textAlign: TextAlign.center,
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: _model
                                                  .textController6Validator
                                                  .asValidator(context),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 8.0, 0.0),
                                                child: InkWell(
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
                                                        'CADASTRO_DATA_PEC_Icon_cf4e02px_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Icon_alert_dialog');
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return WebViewAware(
                                                          child: AlertDialog(
                                                            title:
                                                                Text('Atenção'),
                                                            content: Text(
                                                                'Para quantas pessoas esse ingresso é válido?'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
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
                                                        .secondaryText,
                                                    size: 18.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      maxHeight: 55.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              child: Checkbox(
                                                value: _model.checkboxValue ??=
                                                    false,
                                                onChanged: (newValue) async {
                                                  safeSetState(() =>
                                                      _model.checkboxValue =
                                                          newValue!);

                                                  if (!newValue!) {
                                                    logFirebaseEvent(
                                                        'CADASTRO_DATA_PEC_Checkbox_ldhivt9i_ON_T');
                                                    logFirebaseEvent(
                                                        'Checkbox_update_component_state');
                                                    _model.finalizacaoVenda =
                                                        null;
                                                    safeSetState(() {});
                                                  }
                                                },
                                                side: BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                checkColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                              ),
                                            ),
                                            Text(
                                              'É venda por lote?',
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
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        if (_model.checkboxValue ?? true)
                                          Expanded(
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'CADASTRO_DATA_PEC_Container_8540nx2y_ON_');
                                                logFirebaseEvent(
                                                    'Container_date_time_picker');
                                                final _datePicked2Date =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate:
                                                      getCurrentTimestamp,
                                                  firstDate:
                                                      (getCurrentTimestamp ??
                                                          DateTime(1900)),
                                                  lastDate: DateTime(2050),
                                                  builder: (context, child) {
                                                    return wrapInMaterialDatePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .corMenu,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );

                                                TimeOfDay? _datePicked2Time;
                                                if (_datePicked2Date != null) {
                                                  _datePicked2Time =
                                                      await showTimePicker(
                                                    context: context,
                                                    initialTime:
                                                        TimeOfDay.fromDateTime(
                                                            getCurrentTimestamp),
                                                    builder: (context, child) {
                                                      return wrapInMaterialTimePickerTheme(
                                                        context,
                                                        child!,
                                                        headerBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        headerForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        headerTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      32.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                        pickerBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        pickerForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        selectedDateTimeBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .corMenu,
                                                        selectedDateTimeForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        actionButtonForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        iconSize: 24.0,
                                                      );
                                                    },
                                                  );
                                                }

                                                if (_datePicked2Date != null &&
                                                    _datePicked2Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked2 =
                                                        DateTime(
                                                      _datePicked2Date.year,
                                                      _datePicked2Date.month,
                                                      _datePicked2Date.day,
                                                      _datePicked2Time!.hour,
                                                      _datePicked2Time.minute,
                                                    );
                                                  });
                                                } else if (_model.datePicked2 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked2 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Container_update_component_state');
                                                _model.finalizacaoVenda =
                                                    _model.datePicked2;
                                                safeSetState(() {});
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(12.0),
                                                  child: Text(
                                                    _model.finalizacaoVenda !=
                                                            null
                                                        ? 'Data de Finalização da Venda: ${dateTimeFormat(
                                                            "d/M/y, H:mm",
                                                            _model
                                                                .finalizacaoVenda,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}'
                                                        : 'Data de Finalização da Venda',
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
                                                ),
                                              ),
                                            ),
                                          ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxCupomValue ??=
                                              false,
                                          onChanged: (newValue) async {
                                            safeSetState(() =>
                                                _model.checkboxCupomValue =
                                                    newValue!);

                                            if (!newValue!) {
                                              logFirebaseEvent(
                                                  'CADASTRO_DATA_PEC_CheckboxCupom_ON_TOGGL');
                                              logFirebaseEvent(
                                                  'CheckboxCupom_update_component_state');
                                              _model.finalizacaoVenda = null;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                      Text(
                                        'Ativar Cupom de Desconto',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ],
                                  ),
                                  if (_model.checkboxCupomValue ?? true)
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            height: 55.0,
                                            child: TextFormField(
                                              controller:
                                                  _model.textController7,
                                              focusNode:
                                                  _model.textFieldFocusNode7,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Texto do Cupom',
                                                labelStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                              validator: _model
                                                  .textController7Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 55.0,
                                            decoration: BoxDecoration(),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: [
                                                'Percentual',
                                                'Valor Fixo'
                                              ],
                                              onChanged: (val) => safeSetState(
                                                  () => _model.dropDownValue =
                                                      val),
                                              width: 200.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                              hintText: 'Tipo do Cupom',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              borderWidth: 2.0,
                                              borderRadius: 24.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (_model.dropDownValue !=
                                                      null &&
                                                  _model.dropDownValue != '')
                                                Expanded(
                                                  child: TextFormField(
                                                    controller: _model
                                                        .textFieldValorCupomTextController,
                                                    focusNode: _model
                                                        .textFieldValorCupomFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          _model.dropDownValue ==
                                                                  'Percentual'
                                                              ? 'Percentual'
                                                              : 'Valor',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                      ),
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
                                                    keyboardType:
                                                        const TextInputType
                                                            .numberWithOptions(
                                                            decimal: true),
                                                    validator: _model
                                                        .textFieldValorCupomTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              Container(
                                                width: 150.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldQuantCupomTextController,
                                                  focusNode: _model
                                                      .textFieldQuantCupomFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Quantidade',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .poppins(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .poppins(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .textFieldQuantCupomTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 16.0)),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'CADASTRO_DATA_PEC_MAIS_UM_INGRESSO_BTN_O');
                                              if (_model.dataselectID != null) {
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                var ingressoRecordReference1 =
                                                    IngressoRecord.collection
                                                        .doc();
                                                await ingressoRecordReference1
                                                    .set(
                                                        createIngressoRecordData(
                                                  nome: _model
                                                      .textController1.text,
                                                  quantidade: int.tryParse(
                                                      _model.textController5
                                                          .text),
                                                  valorSemTaxa: double.tryParse(
                                                      _model.textController4
                                                          .text),
                                                  valorComTaxa: (FFAppState()
                                                              .TaxaPadrao *
                                                          double.parse(_model
                                                              .textController4
                                                              .text)) +
                                                      double.parse(_model
                                                          .textController4
                                                          .text),
                                                  valorBilheteria:
                                                      double.tryParse(_model
                                                          .textController3
                                                          .text),
                                                  data: _model.dataselectID,
                                                  dataCriacao:
                                                      getCurrentTimestamp,
                                                  show: FFAppState()
                                                      .cadastrandoShow,
                                                  valoTaxa:
                                                      FFAppState().TaxaPadrao *
                                                          double.parse(_model
                                                              .textController4
                                                              .text),
                                                  valorDesconto: ((double.parse(
                                                                  _model
                                                                      .textController3
                                                                      .text) -
                                                              double.parse(_model
                                                                  .textController4
                                                                  .text)) /
                                                          double.parse(_model
                                                              .textController3
                                                              .text)) *
                                                      100,
                                                  quantidadeRestante:
                                                      int.tryParse(_model
                                                          .textController5
                                                          .text),
                                                  descricao: _model
                                                      .textController2.text,
                                                  validoQuantasPessoas:
                                                      int.tryParse(_model
                                                          .textController6
                                                          .text),
                                                  ocultar: false,
                                                  finalizacaoVenda:
                                                      _model.finalizacaoVenda,
                                                ));
                                                _model.criacaoingressoOutro =
                                                    IngressoRecord.getDocumentFromData(
                                                        createIngressoRecordData(
                                                          nome: _model
                                                              .textController1
                                                              .text,
                                                          quantidade: int
                                                              .tryParse(_model
                                                                  .textController5
                                                                  .text),
                                                          valorSemTaxa: double
                                                              .tryParse(_model
                                                                  .textController4
                                                                  .text),
                                                          valorComTaxa: (FFAppState()
                                                                      .TaxaPadrao *
                                                                  double.parse(_model
                                                                      .textController4
                                                                      .text)) +
                                                              double.parse(_model
                                                                  .textController4
                                                                  .text),
                                                          valorBilheteria: double
                                                              .tryParse(_model
                                                                  .textController3
                                                                  .text),
                                                          data: _model
                                                              .dataselectID,
                                                          dataCriacao:
                                                              getCurrentTimestamp,
                                                          show: FFAppState()
                                                              .cadastrandoShow,
                                                          valoTaxa: FFAppState()
                                                                  .TaxaPadrao *
                                                              double.parse(_model
                                                                  .textController4
                                                                  .text),
                                                          valorDesconto: ((double.parse(_model
                                                                          .textController3
                                                                          .text) -
                                                                      double.parse(_model
                                                                          .textController4
                                                                          .text)) /
                                                                  double.parse(_model
                                                                      .textController3
                                                                      .text)) *
                                                              100,
                                                          quantidadeRestante:
                                                              int.tryParse(_model
                                                                  .textController5
                                                                  .text),
                                                          descricao: _model
                                                              .textController2
                                                              .text,
                                                          validoQuantasPessoas:
                                                              int.tryParse(_model
                                                                  .textController6
                                                                  .text),
                                                          ocultar: false,
                                                          finalizacaoVenda: _model
                                                              .finalizacaoVenda,
                                                        ),
                                                        ingressoRecordReference1);
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await _model.dataselectID!
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'ingressos': FieldValue
                                                          .arrayUnion([
                                                        _model
                                                            .criacaoingressoOutro
                                                            ?.reference
                                                      ]),
                                                    },
                                                  ),
                                                });
                                                if (_model
                                                    .checkboxCupomValue!) {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  var cupomRecordReference1 =
                                                      CupomRecord.collection
                                                          .doc();
                                                  await cupomRecordReference1
                                                      .set(
                                                          createCupomRecordData(
                                                    nome: _model
                                                        .textController7.text,
                                                    tipo: _model.dropDownValue,
                                                    quantidade: int.tryParse(_model
                                                        .textFieldQuantCupomTextController
                                                        .text),
                                                    data: _model.dataselectID,
                                                    valor: double.tryParse(_model
                                                        .textFieldValorCupomTextController
                                                        .text),
                                                    show: FFAppState()
                                                        .cadastrandoShow,
                                                    ingresso: _model
                                                        .criacaoingressoOutro
                                                        ?.reference,
                                                    quantidadeRestante:
                                                        int.tryParse(_model
                                                            .textFieldQuantCupomTextController
                                                            .text),
                                                  ));
                                                  _model.cupomMaisUm = CupomRecord
                                                      .getDocumentFromData(
                                                          createCupomRecordData(
                                                            nome: _model
                                                                .textController7
                                                                .text,
                                                            tipo: _model
                                                                .dropDownValue,
                                                            quantidade: int
                                                                .tryParse(_model
                                                                    .textFieldQuantCupomTextController
                                                                    .text),
                                                            data: _model
                                                                .dataselectID,
                                                            valor: double
                                                                .tryParse(_model
                                                                    .textFieldValorCupomTextController
                                                                    .text),
                                                            show: FFAppState()
                                                                .cadastrandoShow,
                                                            ingresso: _model
                                                                .criacaoingressoOutro
                                                                ?.reference,
                                                            quantidadeRestante:
                                                                int.tryParse(_model
                                                                    .textFieldQuantCupomTextController
                                                                    .text),
                                                          ),
                                                          cupomRecordReference1);
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await _model
                                                      .criacaoingressoOutro!
                                                      .reference
                                                      .update(
                                                          createIngressoRecordData(
                                                    cupom: _model
                                                        .cupomMaisUm?.reference,
                                                  ));
                                                }
                                                if (containerShowsRecord
                                                        .maiorDesconto >
                                                    _model.criacaoingressoOutro!
                                                        .valorDesconto) {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await FFAppState()
                                                      .cadastrandoShow!
                                                      .update(
                                                          createShowsRecordData(
                                                        maiorDesconto: _model
                                                            .criacaoingressoOutro
                                                            ?.valorDesconto,
                                                      ));
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_component_state');
                                                _model.quantddTotal =
                                                    (_model.quantddTotal!) +
                                                        int.parse(_model
                                                            .textController5
                                                            .text);
                                                _model.updatePage(() {});
                                                logFirebaseEvent(
                                                    'Button_alert_dialog');
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        title: Text('Foi'),
                                                        content: Text(
                                                            'Ingresso Adicionado'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                                logFirebaseEvent(
                                                    'Button_reset_form_fields');
                                                safeSetState(() {
                                                  _model.textController1
                                                      ?.clear();
                                                  _model.textController3
                                                      ?.clear();
                                                  _model.textController4
                                                      ?.clear();
                                                  _model.textController5
                                                      ?.clear();
                                                  _model.textController2
                                                      ?.clear();
                                                  _model.textController7
                                                      ?.clear();
                                                  _model
                                                      .textFieldValorCupomTextController
                                                      ?.clear();
                                                  _model
                                                      .textFieldQuantCupomTextController
                                                      ?.clear();
                                                  _model.textController6?.text =
                                                      '1';
                                                });
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                var dataRecordReference =
                                                    DataRecord.collection.doc();
                                                await dataRecordReference
                                                    .set(createDataRecordData(
                                                  data: _model.dataselect,
                                                  show: FFAppState()
                                                      .cadastrandoShow,
                                                  id: random_data.randomString(
                                                    5,
                                                    10,
                                                    true,
                                                    false,
                                                    false,
                                                  ),
                                                  dataCriacao:
                                                      getCurrentTimestamp,
                                                  status: 'Ativo',
                                                ));
                                                _model.criacaodataDuplica =
                                                    DataRecord
                                                        .getDocumentFromData(
                                                            createDataRecordData(
                                                              data: _model
                                                                  .dataselect,
                                                              show: FFAppState()
                                                                  .cadastrandoShow,
                                                              id: random_data
                                                                  .randomString(
                                                                5,
                                                                10,
                                                                true,
                                                                false,
                                                                false,
                                                              ),
                                                              dataCriacao:
                                                                  getCurrentTimestamp,
                                                              status: 'Ativo',
                                                            ),
                                                            dataRecordReference);
                                                logFirebaseEvent(
                                                    'Button_update_component_state');
                                                _model.addToDatacriada(_model
                                                    .criacaodataDuplica!
                                                    .reference);
                                                _model.dataselectID = _model
                                                    .criacaodataDuplica
                                                    ?.reference;
                                                _model.updatePage(() {});
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                var ingressoRecordReference2 =
                                                    IngressoRecord.collection
                                                        .doc();
                                                await ingressoRecordReference2
                                                    .set(
                                                        createIngressoRecordData(
                                                  nome: _model
                                                      .textController1.text,
                                                  quantidade: int.tryParse(
                                                      _model.textController5
                                                          .text),
                                                  valorSemTaxa: double.tryParse(
                                                      _model.textController4
                                                          .text),
                                                  valorComTaxa: (FFAppState()
                                                              .TaxaPadrao *
                                                          double.parse(_model
                                                              .textController4
                                                              .text)) +
                                                      double.parse(_model
                                                          .textController4
                                                          .text),
                                                  valorBilheteria:
                                                      double.tryParse(_model
                                                          .textController3
                                                          .text),
                                                  data: _model
                                                      .criacaodataDuplica
                                                      ?.reference,
                                                  dataCriacao:
                                                      getCurrentTimestamp,
                                                  show: FFAppState()
                                                      .cadastrandoShow,
                                                  valoTaxa:
                                                      FFAppState().TaxaPadrao *
                                                          double.parse(_model
                                                              .textController4
                                                              .text),
                                                  valorDesconto: ((double.parse(
                                                                  _model
                                                                      .textController3
                                                                      .text) -
                                                              double.parse(_model
                                                                  .textController4
                                                                  .text)) /
                                                          double.parse(_model
                                                              .textController3
                                                              .text)) *
                                                      100,
                                                  quantidadeRestante:
                                                      int.tryParse(_model
                                                          .textController5
                                                          .text),
                                                  descricao: _model
                                                      .textController2.text,
                                                  validoQuantasPessoas:
                                                      int.tryParse(_model
                                                          .textController6
                                                          .text),
                                                  ocultar: false,
                                                  finalizacaoVenda:
                                                      _model.finalizacaoVenda,
                                                ));
                                                _model.criacaoingressoDuplica =
                                                    IngressoRecord.getDocumentFromData(
                                                        createIngressoRecordData(
                                                          nome: _model
                                                              .textController1
                                                              .text,
                                                          quantidade: int
                                                              .tryParse(_model
                                                                  .textController5
                                                                  .text),
                                                          valorSemTaxa: double
                                                              .tryParse(_model
                                                                  .textController4
                                                                  .text),
                                                          valorComTaxa: (FFAppState()
                                                                      .TaxaPadrao *
                                                                  double.parse(_model
                                                                      .textController4
                                                                      .text)) +
                                                              double.parse(_model
                                                                  .textController4
                                                                  .text),
                                                          valorBilheteria: double
                                                              .tryParse(_model
                                                                  .textController3
                                                                  .text),
                                                          data: _model
                                                              .criacaodataDuplica
                                                              ?.reference,
                                                          dataCriacao:
                                                              getCurrentTimestamp,
                                                          show: FFAppState()
                                                              .cadastrandoShow,
                                                          valoTaxa: FFAppState()
                                                                  .TaxaPadrao *
                                                              double.parse(_model
                                                                  .textController4
                                                                  .text),
                                                          valorDesconto: ((double.parse(_model
                                                                          .textController3
                                                                          .text) -
                                                                      double.parse(_model
                                                                          .textController4
                                                                          .text)) /
                                                                  double.parse(_model
                                                                      .textController3
                                                                      .text)) *
                                                              100,
                                                          quantidadeRestante:
                                                              int.tryParse(_model
                                                                  .textController5
                                                                  .text),
                                                          descricao: _model
                                                              .textController2
                                                              .text,
                                                          validoQuantasPessoas:
                                                              int.tryParse(_model
                                                                  .textController6
                                                                  .text),
                                                          ocultar: false,
                                                          finalizacaoVenda: _model
                                                              .finalizacaoVenda,
                                                        ),
                                                        ingressoRecordReference2);
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await _model.criacaodataDuplica!
                                                    .reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'ingressos': FieldValue
                                                          .arrayUnion([
                                                        _model
                                                            .criacaoingressoDuplica
                                                            ?.reference
                                                      ]),
                                                    },
                                                  ),
                                                });
                                                if (_model
                                                    .checkboxCupomValue!) {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  var cupomRecordReference2 =
                                                      CupomRecord.collection
                                                          .doc();
                                                  await cupomRecordReference2
                                                      .set(
                                                          createCupomRecordData(
                                                    nome: _model
                                                        .textController7.text,
                                                    tipo: _model.dropDownValue,
                                                    quantidade: int.tryParse(_model
                                                        .textFieldQuantCupomTextController
                                                        .text),
                                                    data: _model
                                                        .criacaodataDuplica
                                                        ?.reference,
                                                    valor: double.tryParse(_model
                                                        .textFieldValorCupomTextController
                                                        .text),
                                                    show: FFAppState()
                                                        .cadastrandoShow,
                                                    ingresso: _model
                                                        .criacaoingressoDuplica
                                                        ?.reference,
                                                    quantidadeRestante:
                                                        int.tryParse(_model
                                                            .textFieldQuantCupomTextController
                                                            .text),
                                                  ));
                                                  _model.cupomDuplica = CupomRecord
                                                      .getDocumentFromData(
                                                          createCupomRecordData(
                                                            nome: _model
                                                                .textController7
                                                                .text,
                                                            tipo: _model
                                                                .dropDownValue,
                                                            quantidade: int
                                                                .tryParse(_model
                                                                    .textFieldQuantCupomTextController
                                                                    .text),
                                                            data: _model
                                                                .criacaodataDuplica
                                                                ?.reference,
                                                            valor: double
                                                                .tryParse(_model
                                                                    .textFieldValorCupomTextController
                                                                    .text),
                                                            show: FFAppState()
                                                                .cadastrandoShow,
                                                            ingresso: _model
                                                                .criacaoingressoDuplica
                                                                ?.reference,
                                                            quantidadeRestante:
                                                                int.tryParse(_model
                                                                    .textFieldQuantCupomTextController
                                                                    .text),
                                                          ),
                                                          cupomRecordReference2);
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await _model
                                                      .criacaoingressoDuplica!
                                                      .reference
                                                      .update(
                                                          createIngressoRecordData(
                                                    cupom: _model.cupomDuplica
                                                        ?.reference,
                                                  ));
                                                }
                                                if (containerShowsRecord
                                                        .maiorDesconto >
                                                    ((double.parse(_model
                                                                .textController4
                                                                .text) /
                                                            double.parse(_model
                                                                .textController3
                                                                .text)) *
                                                        100)) {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await FFAppState()
                                                      .cadastrandoShow!
                                                      .update({
                                                    ...createShowsRecordData(
                                                      maiorDesconto: ((double
                                                                      .parse(_model
                                                                          .textController3
                                                                          .text) -
                                                                  double.parse(_model
                                                                      .textController4
                                                                      .text)) /
                                                              double.parse(_model
                                                                  .textController3
                                                                  .text)) *
                                                          100,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'datasID': FieldValue
                                                            .arrayUnion([
                                                          _model
                                                              .criacaodataDuplica
                                                              ?.id
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await FFAppState()
                                                      .cadastrandoShow!
                                                      .update({
                                                    ...createShowsRecordData(
                                                      proximaData:
                                                          _model.dataselect,
                                                      proximaDataText:
                                                          dateTimeFormat(
                                                        "d/M/y",
                                                        _model.dataselect,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'datasID': FieldValue
                                                            .arrayUnion([
                                                          _model
                                                              .criacaodataDuplica
                                                              ?.id
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                }

                                                if ((_model.dataAnterior !=
                                                        null) &&
                                                    (_model.dataselect! <
                                                        _model.dataAnterior!)) {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await FFAppState()
                                                      .cadastrandoShow!
                                                      .update(
                                                          createShowsRecordData(
                                                        proximaData:
                                                            _model.dataselect,
                                                        proximaDataText:
                                                            dateTimeFormat(
                                                          "d/M/y",
                                                          _model.dataselect,
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                      ));
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_component_state');
                                                _model.addToIdsADD(_model
                                                    .criacaodataDuplica!.id);
                                                _model.quantddTotal =
                                                    (_model.quantddTotal!) +
                                                        int.parse(_model
                                                            .textController5
                                                            .text);
                                                _model.updatePage(() {});
                                                logFirebaseEvent(
                                                    'Button_alert_dialog');
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        title: Text('Foi'),
                                                        content: Text(
                                                            'Ingresso Adicionado'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                                logFirebaseEvent(
                                                    'Button_reset_form_fields');
                                                safeSetState(() {
                                                  _model.textController1
                                                      ?.clear();
                                                  _model.textController3
                                                      ?.clear();
                                                  _model.textController4
                                                      ?.clear();
                                                  _model.textController5
                                                      ?.clear();
                                                  _model.textController2
                                                      ?.clear();
                                                  _model.textController7
                                                      ?.clear();
                                                  _model
                                                      .textFieldValorCupomTextController
                                                      ?.clear();
                                                  _model
                                                      .textFieldQuantCupomTextController
                                                      ?.clear();
                                                  _model.textController6?.text =
                                                      '1';
                                                });
                                              }

                                              safeSetState(() {});
                                            },
                                            text: 'Mais um Ingresso',
                                            options: FFButtonOptions(
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 16.0, 16.0, 16.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'CADASTRO_DATA_PEC_NOVA_DATA_BTN_ON_TAP');
                                              if ((_model.textController1
                                                              .text !=
                                                          '') &&
                                                  (_model.textController4
                                                              .text !=
                                                          '')) {
                                                if (_model.dataselectID !=
                                                    null) {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  var ingressoRecordReference1 =
                                                      IngressoRecord.collection
                                                          .doc();
                                                  await ingressoRecordReference1
                                                      .set(
                                                          createIngressoRecordData(
                                                    nome: _model
                                                        .textController1.text,
                                                    quantidade: int.tryParse(
                                                        _model.textController5
                                                            .text),
                                                    valorSemTaxa:
                                                        double.tryParse(_model
                                                            .textController4
                                                            .text),
                                                    valorComTaxa: (FFAppState()
                                                                .TaxaPadrao *
                                                            double.parse(_model
                                                                .textController4
                                                                .text)) +
                                                        double.parse(_model
                                                            .textController4
                                                            .text),
                                                    valorBilheteria:
                                                        double.tryParse(_model
                                                            .textController3
                                                            .text),
                                                    data: _model.dataselectID,
                                                    dataCriacao:
                                                        getCurrentTimestamp,
                                                    show: FFAppState()
                                                        .cadastrandoShow,
                                                    valoTaxa: FFAppState()
                                                            .TaxaPadrao *
                                                        double.parse(_model
                                                            .textController4
                                                            .text),
                                                    valorDesconto: ((double
                                                                    .parse(_model
                                                                        .textController3
                                                                        .text) -
                                                                double.parse(_model
                                                                    .textController4
                                                                    .text)) /
                                                            double.parse(_model
                                                                .textController3
                                                                .text)) *
                                                        100,
                                                    quantidadeRestante:
                                                        int.tryParse(_model
                                                            .textController5
                                                            .text),
                                                    descricao: _model
                                                        .textController2.text,
                                                    validoQuantasPessoas:
                                                        int.tryParse(_model
                                                            .textController6
                                                            .text),
                                                    ocultar: false,
                                                    finalizacaoVenda:
                                                        _model.finalizacaoVenda,
                                                  ));
                                                  _model.criacaoingresTeia =
                                                      IngressoRecord
                                                          .getDocumentFromData(
                                                              createIngressoRecordData(
                                                                nome: _model
                                                                    .textController1
                                                                    .text,
                                                                quantidade: int
                                                                    .tryParse(_model
                                                                        .textController5
                                                                        .text),
                                                                valorSemTaxa: double
                                                                    .tryParse(_model
                                                                        .textController4
                                                                        .text),
                                                                valorComTaxa: (FFAppState()
                                                                            .TaxaPadrao *
                                                                        double.parse(_model
                                                                            .textController4
                                                                            .text)) +
                                                                    double.parse(_model
                                                                        .textController4
                                                                        .text),
                                                                valorBilheteria:
                                                                    double.tryParse(_model
                                                                        .textController3
                                                                        .text),
                                                                data: _model
                                                                    .dataselectID,
                                                                dataCriacao:
                                                                    getCurrentTimestamp,
                                                                show: FFAppState()
                                                                    .cadastrandoShow,
                                                                valoTaxa: FFAppState()
                                                                        .TaxaPadrao *
                                                                    double.parse(_model
                                                                        .textController4
                                                                        .text),
                                                                valorDesconto: ((double.parse(_model.textController3.text) -
                                                                            double.parse(_model
                                                                                .textController4.text)) /
                                                                        double.parse(_model
                                                                            .textController3
                                                                            .text)) *
                                                                    100,
                                                                quantidadeRestante:
                                                                    int.tryParse(_model
                                                                        .textController5
                                                                        .text),
                                                                descricao: _model
                                                                    .textController2
                                                                    .text,
                                                                validoQuantasPessoas:
                                                                    int.tryParse(_model
                                                                        .textController6
                                                                        .text),
                                                                ocultar: false,
                                                                finalizacaoVenda:
                                                                    _model
                                                                        .finalizacaoVenda,
                                                              ),
                                                              ingressoRecordReference1);
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await _model.dataselectID!
                                                      .update({
                                                    ...createDataRecordData(
                                                      totalIngressos: (_model
                                                              .quantddTotal!) +
                                                          int.parse(_model
                                                              .textController5
                                                              .text),
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'ingressos': FieldValue
                                                            .arrayUnion([
                                                          _model
                                                              .criacaoingresTeia
                                                              ?.reference
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  if (_model
                                                      .checkboxCupomValue!) {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    var cupomRecordReference1 =
                                                        CupomRecord.collection
                                                            .doc();
                                                    await cupomRecordReference1
                                                        .set(
                                                            createCupomRecordData(
                                                      nome: _model
                                                          .textController7.text,
                                                      tipo:
                                                          _model.dropDownValue,
                                                      quantidade: int.tryParse(
                                                          _model
                                                              .textFieldQuantCupomTextController
                                                              .text),
                                                      data: _model.dataselectID,
                                                      valor: double.tryParse(_model
                                                          .textFieldValorCupomTextController
                                                          .text),
                                                      show: FFAppState()
                                                          .cadastrandoShow,
                                                      ingresso: _model
                                                          .criacaoingresTeia
                                                          ?.reference,
                                                      quantidadeRestante:
                                                          int.tryParse(_model
                                                              .textFieldQuantCupomTextController
                                                              .text),
                                                    ));
                                                    _model.cupomNewData = CupomRecord
                                                        .getDocumentFromData(
                                                            createCupomRecordData(
                                                              nome: _model
                                                                  .textController7
                                                                  .text,
                                                              tipo: _model
                                                                  .dropDownValue,
                                                              quantidade: int
                                                                  .tryParse(_model
                                                                      .textFieldQuantCupomTextController
                                                                      .text),
                                                              data: _model
                                                                  .dataselectID,
                                                              valor: double
                                                                  .tryParse(_model
                                                                      .textFieldValorCupomTextController
                                                                      .text),
                                                              show: FFAppState()
                                                                  .cadastrandoShow,
                                                              ingresso: _model
                                                                  .criacaoingresTeia
                                                                  ?.reference,
                                                              quantidadeRestante:
                                                                  int.tryParse(_model
                                                                      .textFieldQuantCupomTextController
                                                                      .text),
                                                            ),
                                                            cupomRecordReference1);
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await _model
                                                        .criacaoingresTeia!
                                                        .reference
                                                        .update(
                                                            createIngressoRecordData(
                                                      cupom: _model.cupomNewData
                                                          ?.reference,
                                                    ));
                                                  }
                                                  if ((containerShowsRecord
                                                              .maiorDesconto !=
                                                          null) &&
                                                      (containerShowsRecord
                                                              .maiorDesconto >
                                                          _model
                                                              .criacaoingresTeia!
                                                              .valorDesconto)) {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await FFAppState()
                                                        .cadastrandoShow!
                                                        .update(
                                                            createShowsRecordData(
                                                          maiorDesconto: _model
                                                              .criacaoingresTeia
                                                              ?.valorDesconto,
                                                        ));
                                                  }
                                                  if ((_model.dataAnterior !=
                                                          null) &&
                                                      (_model.dataselect! <
                                                          _model
                                                              .dataAnterior!)) {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await FFAppState()
                                                        .cadastrandoShow!
                                                        .update(
                                                            createShowsRecordData(
                                                          proximaData:
                                                              _model.dataselect,
                                                          proximaDataText:
                                                              dateTimeFormat(
                                                            "d/M/y",
                                                            _model.dataselect,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                        ));
                                                  }
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          title: Text('Foi'),
                                                          content: Text(
                                                              'Ingresso Adicionado'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                  logFirebaseEvent(
                                                      'Button_update_component_state');
                                                  _model.dataselectID = null;
                                                  _model.quantddTotal = 0;
                                                  safeSetState(() {});
                                                  logFirebaseEvent(
                                                      'Button_reset_form_fields');
                                                  safeSetState(() {
                                                    _model.textController1
                                                        ?.clear();
                                                    _model.textController3
                                                        ?.clear();
                                                    _model.textController4
                                                        ?.clear();
                                                    _model.textController5
                                                        ?.clear();
                                                    _model.textController2
                                                        ?.clear();
                                                    _model.textController6
                                                        ?.text = '1';

                                                    _model.textController7
                                                        ?.clear();
                                                    _model
                                                        .textFieldValorCupomTextController
                                                        ?.clear();
                                                    _model
                                                        .textFieldQuantCupomTextController
                                                        ?.clear();
                                                  });
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  var dataRecordReference =
                                                      DataRecord.collection
                                                          .doc();
                                                  await dataRecordReference
                                                      .set(createDataRecordData(
                                                    data: _model.dataselect,
                                                    show: FFAppState()
                                                        .cadastrandoShow,
                                                    id: random_data
                                                        .randomString(
                                                      5,
                                                      10,
                                                      true,
                                                      false,
                                                      false,
                                                    ),
                                                    dataCriacao:
                                                        getCurrentTimestamp,
                                                    totalIngressos:
                                                        int.tryParse(_model
                                                            .textController5
                                                            .text),
                                                    status: 'Ativo',
                                                  ));
                                                  _model.criacaoPrimeiraData =
                                                      DataRecord.getDocumentFromData(
                                                          createDataRecordData(
                                                            data: _model
                                                                .dataselect,
                                                            show: FFAppState()
                                                                .cadastrandoShow,
                                                            id: random_data
                                                                .randomString(
                                                              5,
                                                              10,
                                                              true,
                                                              false,
                                                              false,
                                                            ),
                                                            dataCriacao:
                                                                getCurrentTimestamp,
                                                            totalIngressos: int
                                                                .tryParse(_model
                                                                    .textController5
                                                                    .text),
                                                            status: 'Ativo',
                                                          ),
                                                          dataRecordReference);
                                                  logFirebaseEvent(
                                                      'Button_update_component_state');
                                                  _model.addToDatacriada(_model
                                                      .criacaoPrimeiraData!
                                                      .reference);
                                                  _model.dataselectID = _model
                                                      .criacaoPrimeiraData
                                                      ?.reference;
                                                  safeSetState(() {});
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  var ingressoRecordReference2 =
                                                      IngressoRecord.collection
                                                          .doc();
                                                  await ingressoRecordReference2
                                                      .set(
                                                          createIngressoRecordData(
                                                    nome: _model
                                                        .textController1.text,
                                                    quantidade: int.tryParse(
                                                        _model.textController5
                                                            .text),
                                                    valorSemTaxa:
                                                        double.tryParse(_model
                                                            .textController4
                                                            .text),
                                                    valorComTaxa: (FFAppState()
                                                                .TaxaPadrao *
                                                            double.parse(_model
                                                                .textController4
                                                                .text)) +
                                                        double.parse(_model
                                                            .textController4
                                                            .text),
                                                    valorBilheteria:
                                                        double.tryParse(_model
                                                            .textController3
                                                            .text),
                                                    data: _model
                                                        .criacaoPrimeiraData
                                                        ?.reference,
                                                    dataCriacao:
                                                        getCurrentTimestamp,
                                                    show: FFAppState()
                                                        .cadastrandoShow,
                                                    valoTaxa: FFAppState()
                                                            .TaxaPadrao *
                                                        double.parse(_model
                                                            .textController4
                                                            .text),
                                                    valorDesconto: ((double
                                                                    .parse(_model
                                                                        .textController3
                                                                        .text) -
                                                                double.parse(_model
                                                                    .textController4
                                                                    .text)) /
                                                            double.parse(_model
                                                                .textController3
                                                                .text)) *
                                                        100,
                                                    quantidadeRestante:
                                                        int.tryParse(_model
                                                            .textController5
                                                            .text),
                                                    descricao: _model
                                                        .textController2.text,
                                                    validoQuantasPessoas:
                                                        int.tryParse(_model
                                                            .textController6
                                                            .text),
                                                    ocultar: false,
                                                    finalizacaoVenda:
                                                        _model.finalizacaoVenda,
                                                  ));
                                                  _model.criacaoPrimeiroIngresso =
                                                      IngressoRecord
                                                          .getDocumentFromData(
                                                              createIngressoRecordData(
                                                                nome: _model
                                                                    .textController1
                                                                    .text,
                                                                quantidade: int
                                                                    .tryParse(_model
                                                                        .textController5
                                                                        .text),
                                                                valorSemTaxa: double
                                                                    .tryParse(_model
                                                                        .textController4
                                                                        .text),
                                                                valorComTaxa: (FFAppState()
                                                                            .TaxaPadrao *
                                                                        double.parse(_model
                                                                            .textController4
                                                                            .text)) +
                                                                    double.parse(_model
                                                                        .textController4
                                                                        .text),
                                                                valorBilheteria:
                                                                    double.tryParse(_model
                                                                        .textController3
                                                                        .text),
                                                                data: _model
                                                                    .criacaoPrimeiraData
                                                                    ?.reference,
                                                                dataCriacao:
                                                                    getCurrentTimestamp,
                                                                show: FFAppState()
                                                                    .cadastrandoShow,
                                                                valoTaxa: FFAppState()
                                                                        .TaxaPadrao *
                                                                    double.parse(_model
                                                                        .textController4
                                                                        .text),
                                                                valorDesconto: ((double.parse(_model.textController3.text) -
                                                                            double.parse(_model
                                                                                .textController4.text)) /
                                                                        double.parse(_model
                                                                            .textController3
                                                                            .text)) *
                                                                    100,
                                                                quantidadeRestante:
                                                                    int.tryParse(_model
                                                                        .textController5
                                                                        .text),
                                                                descricao: _model
                                                                    .textController2
                                                                    .text,
                                                                validoQuantasPessoas:
                                                                    int.tryParse(_model
                                                                        .textController6
                                                                        .text),
                                                                ocultar: false,
                                                                finalizacaoVenda:
                                                                    _model
                                                                        .finalizacaoVenda,
                                                              ),
                                                              ingressoRecordReference2);
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await _model
                                                      .criacaoPrimeiraData!
                                                      .reference
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'ingressos': FieldValue
                                                            .arrayUnion([
                                                          _model
                                                              .criacaoPrimeiroIngresso
                                                              ?.reference
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await FFAppState()
                                                      .cadastrandoShow!
                                                      .update({
                                                    ...createShowsRecordData(
                                                      maiorDesconto: _model
                                                          .criacaoPrimeiroIngresso
                                                          ?.valorDesconto,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'datasID': FieldValue
                                                            .arrayUnion([
                                                          _model
                                                              .criacaoPrimeiraData
                                                              ?.id
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await FFAppState()
                                                      .cadastrandoShow!
                                                      .update(
                                                          createShowsRecordData(
                                                        proximaData:
                                                            _model.dataselect,
                                                        proximaDataText:
                                                            dateTimeFormat(
                                                          "d/M/y",
                                                          _model.dataselect,
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                      ));
                                                  logFirebaseEvent(
                                                      'Button_update_component_state');
                                                  _model.addToIdsADD(_model
                                                      .criacaoPrimeiraData!.id);
                                                  safeSetState(() {});
                                                  if (_model
                                                      .checkboxCupomValue!) {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    var cupomRecordReference2 =
                                                        CupomRecord.collection
                                                            .doc();
                                                    await cupomRecordReference2
                                                        .set(
                                                            createCupomRecordData(
                                                      nome: _model
                                                          .textController7.text,
                                                      tipo:
                                                          _model.dropDownValue,
                                                      quantidade: int.tryParse(
                                                          _model
                                                              .textFieldQuantCupomTextController
                                                              .text),
                                                      data: _model
                                                          .criacaoPrimeiraData
                                                          ?.reference,
                                                      valor: double.tryParse(_model
                                                          .textFieldValorCupomTextController
                                                          .text),
                                                      show: FFAppState()
                                                          .cadastrandoShow,
                                                      ingresso: _model
                                                          .criacaoPrimeiroIngresso
                                                          ?.reference,
                                                      quantidadeRestante:
                                                          int.tryParse(_model
                                                              .textFieldQuantCupomTextController
                                                              .text),
                                                    ));
                                                    _model.cupomPrimeiro = CupomRecord
                                                        .getDocumentFromData(
                                                            createCupomRecordData(
                                                              nome: _model
                                                                  .textController7
                                                                  .text,
                                                              tipo: _model
                                                                  .dropDownValue,
                                                              quantidade: int
                                                                  .tryParse(_model
                                                                      .textFieldQuantCupomTextController
                                                                      .text),
                                                              data: _model
                                                                  .criacaoPrimeiraData
                                                                  ?.reference,
                                                              valor: double
                                                                  .tryParse(_model
                                                                      .textFieldValorCupomTextController
                                                                      .text),
                                                              show: FFAppState()
                                                                  .cadastrandoShow,
                                                              ingresso: _model
                                                                  .criacaoPrimeiroIngresso
                                                                  ?.reference,
                                                              quantidadeRestante:
                                                                  int.tryParse(_model
                                                                      .textFieldQuantCupomTextController
                                                                      .text),
                                                            ),
                                                            cupomRecordReference2);
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await _model
                                                        .criacaoingressoOutro!
                                                        .reference
                                                        .update(
                                                            createIngressoRecordData(
                                                      cupom: _model
                                                          .cupomPrimeiro
                                                          ?.reference,
                                                    ));
                                                  }
                                                  if (!((containerShowsRecord
                                                              .maiorDesconto !=
                                                          null) &&
                                                      (containerShowsRecord
                                                              .maiorDesconto >
                                                          _model
                                                              .criacaoPrimeiroIngresso!
                                                              .valorDesconto))) {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await FFAppState()
                                                        .cadastrandoShow!
                                                        .update(
                                                            createShowsRecordData(
                                                          maiorDesconto: _model
                                                              .criacaoPrimeiroIngresso
                                                              ?.valorDesconto,
                                                        ));
                                                  }
                                                  if ((containerShowsRecord
                                                              .proximaData !=
                                                          null) &&
                                                      (containerShowsRecord
                                                              .proximaData! >
                                                          _model.dataselect!)) {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await FFAppState()
                                                        .cadastrandoShow!
                                                        .update(
                                                            createShowsRecordData(
                                                          proximaData:
                                                              _model.dataselect,
                                                          proximaDataText:
                                                              dateTimeFormat(
                                                            "d/M/y",
                                                            _model.dataselect,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                        ));
                                                  }
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          title: Text('Foi'),
                                                          content: Text(
                                                              'Ingresso Adicionado'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                  logFirebaseEvent(
                                                      'Button_update_component_state');
                                                  _model.dataselectID = null;
                                                  _model.quantddTotal = 0;
                                                  safeSetState(() {});
                                                  logFirebaseEvent(
                                                      'Button_reset_form_fields');
                                                  safeSetState(() {
                                                    _model.textController1
                                                        ?.clear();
                                                    _model.textController3
                                                        ?.clear();
                                                    _model.textController4
                                                        ?.clear();
                                                    _model.textController5
                                                        ?.clear();
                                                    _model.textController2
                                                        ?.clear();
                                                    _model.textController6
                                                        ?.text = '1';

                                                    _model.textController7
                                                        ?.clear();
                                                    _model
                                                        .textFieldValorCupomTextController
                                                        ?.clear();
                                                    _model
                                                        .textFieldQuantCupomTextController
                                                        ?.clear();
                                                  });
                                                }
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_update_component_state');
                                                _model.dataselectID = null;
                                                _model.dataselect = null;
                                                safeSetState(() {});
                                              }

                                              logFirebaseEvent(
                                                  'Button_date_time_picker');
                                              final _datePicked3Date =
                                                  await showDatePicker(
                                                context: context,
                                                initialDate:
                                                    getCurrentTimestamp,
                                                firstDate:
                                                    (getCurrentTimestamp ??
                                                        DateTime(1900)),
                                                lastDate: DateTime(2050),
                                                builder: (context, child) {
                                                  return wrapInMaterialDatePickerTheme(
                                                    context,
                                                    child!,
                                                    headerBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    headerForegroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    headerTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .override(
                                                              font: GoogleFonts
                                                                  .poppins(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                              fontSize: 32.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLarge
                                                                  .fontStyle,
                                                            ),
                                                    pickerBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    pickerForegroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    selectedDateTimeBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .corMenu,
                                                    selectedDateTimeForegroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    actionButtonForegroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    iconSize: 24.0,
                                                  );
                                                },
                                              );

                                              TimeOfDay? _datePicked3Time;
                                              if (_datePicked3Date != null) {
                                                _datePicked3Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .corMenu,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                              }

                                              if (_datePicked3Date != null &&
                                                  _datePicked3Time != null) {
                                                safeSetState(() {
                                                  _model.datePicked3 = DateTime(
                                                    _datePicked3Date.year,
                                                    _datePicked3Date.month,
                                                    _datePicked3Date.day,
                                                    _datePicked3Time!.hour,
                                                    _datePicked3Time.minute,
                                                  );
                                                });
                                              } else if (_model.datePicked3 !=
                                                  null) {
                                                safeSetState(() {
                                                  _model.datePicked3 =
                                                      getCurrentTimestamp;
                                                });
                                              }
                                              logFirebaseEvent(
                                                  'Button_update_component_state');
                                              _model.dataAnterior =
                                                  _model.dataselect;
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'Button_update_component_state');
                                              _model.dataselect =
                                                  _model.datePicked3;
                                              safeSetState(() {});

                                              safeSetState(() {});
                                            },
                                            text: 'Nova Data',
                                            options: FFButtonOptions(
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 16.0, 16.0, 16.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .corMenu,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'CADASTRO_DATA_PEC_ADICIONAR_E_AVANAR_BTN');
                                      if (_model.dataselectID != null) {
                                        logFirebaseEvent('Button_backend_call');

                                        var ingressoRecordReference1 =
                                            IngressoRecord.collection.doc();
                                        await ingressoRecordReference1
                                            .set(createIngressoRecordData(
                                          nome: _model.textController1.text,
                                          quantidade: int.tryParse(
                                              _model.textController5.text),
                                          valorSemTaxa: double.tryParse(
                                              _model.textController4.text),
                                          valorComTaxa: (FFAppState()
                                                      .TaxaPadrao *
                                                  double.parse(_model
                                                      .textController4.text)) +
                                              double.parse(
                                                  _model.textController4.text),
                                          valorBilheteria: double.tryParse(
                                              _model.textController3.text),
                                          data: _model.dataselectID,
                                          dataCriacao: getCurrentTimestamp,
                                          show: FFAppState().cadastrandoShow,
                                          valoTaxa: FFAppState().TaxaPadrao *
                                              double.parse(
                                                  _model.textController4.text),
                                          valorDesconto: ((double.parse(_model
                                                          .textController3
                                                          .text) -
                                                      double.parse(_model
                                                          .textController4
                                                          .text)) /
                                                  double.parse(_model
                                                      .textController3.text)) *
                                              100,
                                          quantidadeRestante: int.tryParse(
                                              _model.textController5.text),
                                          descricao:
                                              _model.textController2.text,
                                          validoQuantasPessoas: int.tryParse(
                                              _model.textController6.text),
                                          ocultar: false,
                                          finalizacaoVenda:
                                              _model.finalizacaoVenda,
                                        ));
                                        _model.addAvancaContemIngresso =
                                            IngressoRecord.getDocumentFromData(
                                                createIngressoRecordData(
                                                  nome: _model
                                                      .textController1.text,
                                                  quantidade: int.tryParse(
                                                      _model.textController5
                                                          .text),
                                                  valorSemTaxa: double.tryParse(
                                                      _model.textController4
                                                          .text),
                                                  valorComTaxa: (FFAppState()
                                                              .TaxaPadrao *
                                                          double.parse(_model
                                                              .textController4
                                                              .text)) +
                                                      double.parse(_model
                                                          .textController4
                                                          .text),
                                                  valorBilheteria:
                                                      double.tryParse(_model
                                                          .textController3
                                                          .text),
                                                  data: _model.dataselectID,
                                                  dataCriacao:
                                                      getCurrentTimestamp,
                                                  show: FFAppState()
                                                      .cadastrandoShow,
                                                  valoTaxa:
                                                      FFAppState().TaxaPadrao *
                                                          double.parse(_model
                                                              .textController4
                                                              .text),
                                                  valorDesconto: ((double.parse(
                                                                  _model
                                                                      .textController3
                                                                      .text) -
                                                              double.parse(_model
                                                                  .textController4
                                                                  .text)) /
                                                          double.parse(_model
                                                              .textController3
                                                              .text)) *
                                                      100,
                                                  quantidadeRestante:
                                                      int.tryParse(_model
                                                          .textController5
                                                          .text),
                                                  descricao: _model
                                                      .textController2.text,
                                                  validoQuantasPessoas:
                                                      int.tryParse(_model
                                                          .textController6
                                                          .text),
                                                  ocultar: false,
                                                  finalizacaoVenda:
                                                      _model.finalizacaoVenda,
                                                ),
                                                ingressoRecordReference1);
                                        logFirebaseEvent(
                                            'Button_update_component_state');
                                        _model.quantddTotal = (_model
                                                .quantddTotal!) +
                                            int.parse(
                                                _model.textController5.text);
                                        safeSetState(() {});
                                        logFirebaseEvent('Button_backend_call');

                                        await _model.dataselectID!.update({
                                          ...createDataRecordData(
                                            totalIngressos: _model.quantddTotal,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'ingressos':
                                                  FieldValue.arrayUnion([
                                                _model.addAvancaContemIngresso
                                                    ?.reference
                                              ]),
                                            },
                                          ),
                                        });
                                        if (_model.checkboxCupomValue!) {
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          var cupomRecordReference1 =
                                              CupomRecord.collection.doc();
                                          await cupomRecordReference1
                                              .set(createCupomRecordData(
                                            nome: _model.textController7.text,
                                            tipo: _model.dropDownValue,
                                            quantidade: int.tryParse(_model
                                                .textFieldQuantCupomTextController
                                                .text),
                                            data: _model.dataselectID,
                                            valor: double.tryParse(_model
                                                .textFieldValorCupomTextController
                                                .text),
                                            show: FFAppState().cadastrandoShow,
                                            ingresso: _model
                                                .addAvancaContemIngresso
                                                ?.reference,
                                            quantidadeRestante: int.tryParse(_model
                                                .textFieldQuantCupomTextController
                                                .text),
                                          ));
                                          _model.cupomAvanca =
                                              CupomRecord.getDocumentFromData(
                                                  createCupomRecordData(
                                                    nome: _model
                                                        .textController7.text,
                                                    tipo: _model.dropDownValue,
                                                    quantidade: int.tryParse(_model
                                                        .textFieldQuantCupomTextController
                                                        .text),
                                                    data: _model.dataselectID,
                                                    valor: double.tryParse(_model
                                                        .textFieldValorCupomTextController
                                                        .text),
                                                    show: FFAppState()
                                                        .cadastrandoShow,
                                                    ingresso: _model
                                                        .addAvancaContemIngresso
                                                        ?.reference,
                                                    quantidadeRestante:
                                                        int.tryParse(_model
                                                            .textFieldQuantCupomTextController
                                                            .text),
                                                  ),
                                                  cupomRecordReference1);
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          await _model.addAvancaContemIngresso!
                                              .reference
                                              .update(createIngressoRecordData(
                                            cupom:
                                                _model.cupomAvanca?.reference,
                                          ));
                                        }
                                        if (containerShowsRecord.maiorDesconto >
                                            _model.addAvancaContemIngresso!
                                                .valorDesconto) {
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          await FFAppState()
                                              .cadastrandoShow!
                                              .update(createShowsRecordData(
                                                maiorDesconto: _model
                                                    .addAvancaContemIngresso
                                                    ?.valorDesconto,
                                              ));
                                        }
                                        if ((_model.dataAnterior != null) &&
                                            (_model.dataselect! <
                                                _model.dataAnterior!)) {
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          await FFAppState()
                                              .cadastrandoShow!
                                              .update(createShowsRecordData(
                                                proximaData: _model.dataselect,
                                                proximaDataText: dateTimeFormat(
                                                  "d/M/y",
                                                  _model.dataselect,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                              ));
                                        }
                                        logFirebaseEvent(
                                            'Button_reset_form_fields');
                                        safeSetState(() {
                                          _model.textController1?.clear();
                                          _model.textController3?.clear();
                                          _model.textController4?.clear();
                                          _model.textController5?.clear();
                                          _model.textController2?.clear();
                                          _model.textController6?.text = '1';

                                          _model.textController7?.clear();
                                          _model
                                              .textFieldValorCupomTextController
                                              ?.clear();
                                          _model
                                              .textFieldQuantCupomTextController
                                              ?.clear();
                                        });
                                        logFirebaseEvent('Button_alert_dialog');
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                title: Text('Foi'),
                                                content:
                                                    Text('Cadastro concluido'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                        logFirebaseEvent('Button_navigate_to');

                                        context.goNamed(
                                            DashboardShowsWidget.routeName);

                                        logFirebaseEvent(
                                            'Button_update_app_state');
                                        FFAppState().stateADM = '';
                                        safeSetState(() {});
                                      } else {
                                        logFirebaseEvent(
                                            'Button_update_component_state');
                                        _model.quantddTotal = (_model
                                                .quantddTotal!) +
                                            int.parse(
                                                _model.textController5.text);
                                        safeSetState(() {});
                                        logFirebaseEvent('Button_backend_call');

                                        var dataRecordReference =
                                            DataRecord.collection.doc();
                                        await dataRecordReference
                                            .set(createDataRecordData(
                                          data: _model.dataselect,
                                          show: FFAppState().cadastrandoShow,
                                          id: random_data.randomString(
                                            5,
                                            10,
                                            true,
                                            false,
                                            false,
                                          ),
                                          dataCriacao: getCurrentTimestamp,
                                          totalIngressos: _model.quantddTotal,
                                          status: 'Ativo',
                                        ));
                                        _model.criacaodata =
                                            DataRecord.getDocumentFromData(
                                                createDataRecordData(
                                                  data: _model.dataselect,
                                                  show: FFAppState()
                                                      .cadastrandoShow,
                                                  id: random_data.randomString(
                                                    5,
                                                    10,
                                                    true,
                                                    false,
                                                    false,
                                                  ),
                                                  dataCriacao:
                                                      getCurrentTimestamp,
                                                  totalIngressos:
                                                      _model.quantddTotal,
                                                  status: 'Ativo',
                                                ),
                                                dataRecordReference);
                                        logFirebaseEvent(
                                            'Button_update_component_state');
                                        _model.addToDatacriada(
                                            _model.criacaodata!.reference);
                                        _model.dataselectID =
                                            _model.criacaodata?.reference;
                                        safeSetState(() {});
                                        logFirebaseEvent('Button_backend_call');

                                        var ingressoRecordReference2 =
                                            IngressoRecord.collection.doc();
                                        await ingressoRecordReference2
                                            .set(createIngressoRecordData(
                                          nome: _model.textController1.text,
                                          quantidade: int.tryParse(
                                              _model.textController5.text),
                                          valorSemTaxa: double.tryParse(
                                              _model.textController4.text),
                                          valorComTaxa: (FFAppState()
                                                      .TaxaPadrao *
                                                  double.parse(_model
                                                      .textController4.text)) +
                                              double.parse(
                                                  _model.textController4.text),
                                          valorBilheteria: double.tryParse(
                                              _model.textController3.text),
                                          data: _model.criacaodata?.reference,
                                          dataCriacao: getCurrentTimestamp,
                                          valoTaxa: FFAppState().TaxaPadrao *
                                              double.parse(
                                                  _model.textController4.text),
                                          valorDesconto: ((double.parse(_model
                                                          .textController3
                                                          .text) -
                                                      double.parse(_model
                                                          .textController4
                                                          .text)) /
                                                  double.parse(_model
                                                      .textController3.text)) *
                                              100,
                                          show: FFAppState().cadastrandoShow,
                                          quantidadeRestante: int.tryParse(
                                              _model.textController5.text),
                                          descricao:
                                              _model.textController2.text,
                                          validoQuantasPessoas: int.tryParse(
                                              _model.textController6.text),
                                          ocultar: false,
                                          finalizacaoVenda:
                                              _model.finalizacaoVenda,
                                        ));
                                        _model.criacaoingressoo =
                                            IngressoRecord.getDocumentFromData(
                                                createIngressoRecordData(
                                                  nome: _model
                                                      .textController1.text,
                                                  quantidade: int.tryParse(
                                                      _model.textController5
                                                          .text),
                                                  valorSemTaxa: double.tryParse(
                                                      _model.textController4
                                                          .text),
                                                  valorComTaxa: (FFAppState()
                                                              .TaxaPadrao *
                                                          double.parse(_model
                                                              .textController4
                                                              .text)) +
                                                      double.parse(_model
                                                          .textController4
                                                          .text),
                                                  valorBilheteria:
                                                      double.tryParse(_model
                                                          .textController3
                                                          .text),
                                                  data: _model
                                                      .criacaodata?.reference,
                                                  dataCriacao:
                                                      getCurrentTimestamp,
                                                  valoTaxa:
                                                      FFAppState().TaxaPadrao *
                                                          double.parse(_model
                                                              .textController4
                                                              .text),
                                                  valorDesconto: ((double.parse(
                                                                  _model
                                                                      .textController3
                                                                      .text) -
                                                              double.parse(_model
                                                                  .textController4
                                                                  .text)) /
                                                          double.parse(_model
                                                              .textController3
                                                              .text)) *
                                                      100,
                                                  show: FFAppState()
                                                      .cadastrandoShow,
                                                  quantidadeRestante:
                                                      int.tryParse(_model
                                                          .textController5
                                                          .text),
                                                  descricao: _model
                                                      .textController2.text,
                                                  validoQuantasPessoas:
                                                      int.tryParse(_model
                                                          .textController6
                                                          .text),
                                                  ocultar: false,
                                                  finalizacaoVenda:
                                                      _model.finalizacaoVenda,
                                                ),
                                                ingressoRecordReference2);
                                        logFirebaseEvent('Button_backend_call');

                                        await _model.dataselectID!.update({
                                          ...createDataRecordData(
                                            totalIngressos: _model.quantddTotal,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'ingressos':
                                                  FieldValue.arrayUnion([
                                                _model
                                                    .criacaoingressoo?.reference
                                              ]),
                                            },
                                          ),
                                        });
                                        logFirebaseEvent('Button_backend_call');

                                        await FFAppState()
                                            .cadastrandoShow!
                                            .update({
                                          ...createShowsRecordData(
                                            maiorDesconto: _model
                                                .criacaoingressoo
                                                ?.valorDesconto,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'datasID': FieldValue.arrayUnion(
                                                  [_model.criacaodata?.id]),
                                            },
                                          ),
                                        });
                                        if (_model.checkboxCupomValue!) {
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          var cupomRecordReference2 =
                                              CupomRecord.collection.doc();
                                          await cupomRecordReference2
                                              .set(createCupomRecordData(
                                            nome: _model.textController7.text,
                                            tipo: _model.dropDownValue,
                                            quantidade: int.tryParse(_model
                                                .textFieldQuantCupomTextController
                                                .text),
                                            data: _model.criacaodata?.reference,
                                            valor: double.tryParse(_model
                                                .textFieldValorCupomTextController
                                                .text),
                                            show: FFAppState().cadastrandoShow,
                                            ingresso: _model
                                                .criacaoingressoo?.reference,
                                            quantidadeRestante: int.tryParse(_model
                                                .textFieldQuantCupomTextController
                                                .text),
                                          ));
                                          _model.cupomCriacao =
                                              CupomRecord.getDocumentFromData(
                                                  createCupomRecordData(
                                                    nome: _model
                                                        .textController7.text,
                                                    tipo: _model.dropDownValue,
                                                    quantidade: int.tryParse(_model
                                                        .textFieldQuantCupomTextController
                                                        .text),
                                                    data: _model
                                                        .criacaodata?.reference,
                                                    valor: double.tryParse(_model
                                                        .textFieldValorCupomTextController
                                                        .text),
                                                    show: FFAppState()
                                                        .cadastrandoShow,
                                                    ingresso: _model
                                                        .criacaoingressoo
                                                        ?.reference,
                                                    quantidadeRestante:
                                                        int.tryParse(_model
                                                            .textFieldQuantCupomTextController
                                                            .text),
                                                  ),
                                                  cupomRecordReference2);
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          await _model
                                              .criacaoingressoo!.reference
                                              .update(createIngressoRecordData(
                                            cupom:
                                                _model.cupomCriacao?.reference,
                                          ));
                                        }
                                        logFirebaseEvent('Button_backend_call');

                                        await FFAppState()
                                            .cadastrandoShow!
                                            .update(createShowsRecordData(
                                              proximaData: _model.dataselect,
                                              proximaDataText: dateTimeFormat(
                                                "d/M/y",
                                                _model.dataselect,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                            ));
                                        logFirebaseEvent(
                                            'Button_update_component_state');
                                        _model.addToIdsADD(
                                            _model.criacaodata!.id);
                                        safeSetState(() {});
                                        logFirebaseEvent('Button_alert_dialog');
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                title: Text('Foi'),
                                                content:
                                                    Text('Cadastro concluido'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                        logFirebaseEvent('Button_navigate_to');

                                        context.goNamed(
                                            DashboardShowsWidget.routeName);

                                        logFirebaseEvent(
                                            'Button_update_app_state');
                                        FFAppState().stateADM = '';
                                        safeSetState(() {});
                                      }

                                      safeSetState(() {});
                                    },
                                    text: 'Adicionar e Avançar',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).corMenu,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                          if (_model.datacriada.length > 0)
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Builder(
                                builder: (context) {
                                  final datas = _model.datacriada.toList();

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(datas.length,
                                        (datasIndex) {
                                      final datasItem = datas[datasIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: StreamBuilder<DataRecord>(
                                          stream:
                                              DataRecord.getDocument(datasItem),
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

                                            final containerDataRecord =
                                                snapshot.data!;

                                            return Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      dateTimeFormat(
                                                        "d/M/y, H:m",
                                                        containerDataRecord
                                                            .data!,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: StreamBuilder<
                                                            List<
                                                                IngressoRecord>>(
                                                          stream:
                                                              queryIngressoRecord(
                                                            queryBuilder:
                                                                (ingressoRecord) =>
                                                                    ingressoRecord
                                                                        .where(
                                                              'data',
                                                              isEqualTo:
                                                                  datasItem,
                                                            ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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
                                                            List<IngressoRecord>
                                                                columnIngressoRecordList =
                                                                snapshot.data!;

                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: List.generate(
                                                                  columnIngressoRecordList
                                                                      .length,
                                                                  (columnIndex) {
                                                                final columnIngressoRecord =
                                                                    columnIngressoRecordList[
                                                                        columnIndex];
                                                                return Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Text(
                                                                        columnIngressoRecord
                                                                            .nome,
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.poppins(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }),
                                                            );
                                                          },
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
                                                            'CADASTRO_DATA_PEC_Icon_atkgtcus_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Icon_backend_call');

                                                        await FFAppState()
                                                            .cadastrandoShow!
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'datasID': FieldValue
                                                                  .arrayRemove([
                                                                containerDataRecord
                                                                    .id
                                                              ]),
                                                            },
                                                          ),
                                                        });
                                                        logFirebaseEvent(
                                                            'Icon_update_component_state');
                                                        _model
                                                            .removeFromDatacriada(
                                                                datasItem);
                                                        safeSetState(() {});
                                                        logFirebaseEvent(
                                                            'Icon_backend_call');
                                                        await containerDataRecord
                                                            .reference
                                                            .delete();
                                                        logFirebaseEvent(
                                                            'Icon_show_snack_bar');
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Data Deletada',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                        );
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .trashAlt,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 16.0)),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
