import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cadastro_info_basica_model.dart';
export 'cadastro_info_basica_model.dart';

class CadastroInfoBasicaWidget extends StatefulWidget {
  const CadastroInfoBasicaWidget({super.key});

  @override
  State<CadastroInfoBasicaWidget> createState() =>
      _CadastroInfoBasicaWidgetState();
}

class _CadastroInfoBasicaWidgetState extends State<CadastroInfoBasicaWidget> {
  late CadastroInfoBasicaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadastroInfoBasicaModel());

    _model.textFieldNomeTextController ??= TextEditingController();
    _model.textFieldNomeFocusNode ??= FocusNode();

    _model.textFieldSlugTextController ??= TextEditingController();
    _model.textFieldSlugFocusNode ??= FocusNode();

    _model.textController3 ??= TextEditingController(text: _model.recomenda);
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

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
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('CADASTRO_INFO_BASICA_Row_7jj56yso_ON_TAP');
                  logFirebaseEvent('Row_update_component_state');
                  _model.abrir = !_model.abrir;
                  safeSetState(() {});
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (FFAppState().cadastrandoShow != null)
                      Icon(
                        Icons.check_circle,
                        color: FlutterFlowTheme.of(context).success,
                        size: 32.0,
                      ),
                    if (FFAppState().cadastrandoShow == null)
                      Icon(
                        Icons.circle_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 32.0,
                      ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '- Informações Básicas',
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
                        Icons.keyboard_arrow_down,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 32.0,
                      ),
                    if (!_model.abrir)
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                  ],
                ),
              ),
              if (_model.abrir)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.foto == null || _model.foto == '')
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'CADASTRO_INFO_BASICA_Container_jj5442va_');
                                  logFirebaseEvent('Container_custom_action');
                                  _model.cropImage =
                                      await actions.cropMultipleImg(
                                    context,
                                  );
                                  logFirebaseEvent(
                                      'Container_update_component_state');
                                  _model.foto = _model.cropImage?.firstOrNull;
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 150.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 250.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 250.0;
                                    } else {
                                      return 250.0;
                                    }
                                  }(),
                                  height: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 150.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 250.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 250.0;
                                    } else {
                                      return 250.0;
                                    }
                                  }(),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/foto.png',
                                          width: 50.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Clique para adicionar uma foto de capa',
                                            textAlign: TextAlign.center,
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
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.foto != null && _model.foto != '')
                              Container(
                                width: 220.0,
                                height: 250.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 2.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          _model.foto!,
                                          width: double.infinity,
                                          height: 260.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'CADASTRO_INFO_BASICA_Icon_9wo1h58r_ON_TA');
                                          logFirebaseEvent(
                                              'Icon_update_component_state');
                                          _model.foto = null;
                                          safeSetState(() {});
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.trashAlt,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (_model.imgCasa == null || _model.imgCasa == '')
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'CADASTRO_INFO_BASICA_Container_61irihmh_');
                                  logFirebaseEvent('Container_custom_action');
                                  _model.cropImageAssentos =
                                      await actions.cropMultipleImg(
                                    context,
                                  );
                                  logFirebaseEvent(
                                      'Container_update_component_state');
                                  _model.imgCasa =
                                      _model.cropImageAssentos?.firstOrNull;
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 150.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 250.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 250.0;
                                    } else {
                                      return 250.0;
                                    }
                                  }(),
                                  height: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 150.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 250.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 250.0;
                                    } else {
                                      return 250.0;
                                    }
                                  }(),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/foto.png',
                                          width: 50.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Clique para adicionar uma foto da Casa (Ou mapa de Assentos)',
                                            textAlign: TextAlign.center,
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
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 12.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 14.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 14.0;
                                                    } else {
                                                      return 14.0;
                                                    }
                                                  }(),
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
                                    ],
                                  ),
                                ),
                              ),
                            if (_model.imgCasa != null && _model.imgCasa != '')
                              Container(
                                width: 220.0,
                                height: 250.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 2.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          _model.imgCasa!,
                                          width: double.infinity,
                                          height: 260.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'CADASTRO_INFO_BASICA_Icon_3dfu9u2q_ON_TA');
                                          logFirebaseEvent(
                                              'Icon_update_component_state');
                                          _model.imgCasa = null;
                                          safeSetState(() {});
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.trashAlt,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ].divide(SizedBox(width: 24.0)),
                    ),
                    TextFormField(
                      controller: _model.textFieldNomeTextController,
                      focusNode: _model.textFieldNomeFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nome do Show',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                      validator: _model.textFieldNomeTextControllerValidator
                          .asValidator(context),
                    ),
                    TextFormField(
                      controller: _model.textFieldSlugTextController,
                      focusNode: _model.textFieldSlugFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nome que aparece na URL (Opcional)',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                      validator: _model.textFieldSlugTextControllerValidator
                          .asValidator(context),
                    ),
                    FutureBuilder<List<LocalRecord>>(
                      future: queryLocalRecordOnce(
                        queryBuilder: (localRecord) => localRecord
                            .where(
                              'oculto',
                              isEqualTo: false,
                            )
                            .orderBy('nome'),
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
                        List<LocalRecord> containerLocalRecordList =
                            snapshot.data!;

                        return Container(
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (valueOrDefault(
                                      currentUserDocument?.nivelAcesso, '') !=
                                  'Administrador')
                                AuthUserStreamWidget(
                                  builder: (context) =>
                                      FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownLocalValueController ??=
                                            FormFieldController<String>(
                                      _model.dropDownLocalValue ??= '',
                                    ),
                                    options: List<String>.from(
                                        containerLocalRecordList
                                            .where((e) => e.produtores.contains(
                                                valueOrDefault(
                                                    currentUserDocument
                                                        ?.identificador,
                                                    '')))
                                            .toList()
                                            .map((e) => e.id)
                                            .toList()),
                                    optionLabels: containerLocalRecordList
                                        .where((e) => e.produtores.contains(
                                            valueOrDefault(
                                                currentUserDocument
                                                    ?.identificador,
                                                '')))
                                        .toList()
                                        .map((e) => e.nome)
                                        .toList(),
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropDownLocalValue = val),
                                    height: 56.0,
                                    searchHintTextStyle:
                                        FlutterFlowTheme.of(context)
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
                                    searchTextStyle:
                                        FlutterFlowTheme.of(context)
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
                                    textStyle: FlutterFlowTheme.of(context)
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
                                    hintText: 'Local',
                                    searchHintText: 'Pesquise pelo nome',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    elevation: 2.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    borderWidth: 2.0,
                                    borderRadius: 200.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: true,
                                    isMultiSelect: false,
                                  ),
                                ),
                              if (valueOrDefault(
                                      currentUserDocument?.nivelAcesso, '') ==
                                  'Administrador')
                                AuthUserStreamWidget(
                                  builder: (context) =>
                                      FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropDownLocalADMValueController ??=
                                        FormFieldController<String>(
                                      _model.dropDownLocalADMValue ??= '',
                                    ),
                                    options: List<String>.from(
                                        containerLocalRecordList
                                            .map((e) => valueOrDefault<String>(
                                                  e.id,
                                                  'null',
                                                ))
                                            .toList()),
                                    optionLabels: containerLocalRecordList
                                        .map((e) => valueOrDefault<String>(
                                              e.nome,
                                              'null',
                                            ))
                                        .toList(),
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropDownLocalADMValue = val),
                                    height: 56.0,
                                    searchHintTextStyle:
                                        FlutterFlowTheme.of(context)
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
                                    searchTextStyle:
                                        FlutterFlowTheme.of(context)
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
                                    textStyle: FlutterFlowTheme.of(context)
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
                                    hintText: 'Local',
                                    searchHintText: 'Pesquise pelo nome',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    elevation: 2.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    borderWidth: 2.0,
                                    borderRadius: 200.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: true,
                                    isMultiSelect: false,
                                  ),
                                ),
                            ].divide(SizedBox(height: 30.0)),
                          ),
                        );
                      },
                    ),
                    StreamBuilder<List<FaixaEtariaRecord>>(
                      stream: queryFaixaEtariaRecord(),
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
                        List<FaixaEtariaRecord> containerFaixaEtariaRecordList =
                            snapshot.data!;

                        return Container(
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowDropDown<String>(
                                controller:
                                    _model.dropDownRocmendaValueController ??=
                                        FormFieldController<String>(
                                  _model.dropDownRocmendaValue ??= '',
                                ),
                                options: List<String>.from(
                                    containerFaixaEtariaRecordList
                                        .map((e) => valueOrDefault<String>(
                                              e.uid,
                                              'null',
                                            ))
                                        .toList()),
                                optionLabels: containerFaixaEtariaRecordList
                                    .map((e) => valueOrDefault<String>(
                                          e.nomeIdentificador,
                                          'null',
                                        ))
                                    .toList(),
                                onChanged: (val) async {
                                  safeSetState(
                                      () => _model.dropDownRocmendaValue = val);
                                  logFirebaseEvent(
                                      'CADASTRO_INFO_BASICA_DropDownRocmenda_ON');
                                  logFirebaseEvent(
                                      'DropDownRocmenda_update_component_state');
                                  _model.recomenda =
                                      containerFaixaEtariaRecordList
                                          .where((e) =>
                                              _model.dropDownRocmendaValue ==
                                              e.reference.id)
                                          .toList()
                                          .firstOrNull
                                          ?.descricaoInfo;
                                  safeSetState(() {});
                                },
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                hintText: 'Recomendação Etaria',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                borderWidth: 2.0,
                                borderRadius: 200.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                              TextFormField(
                                controller: _model.textController3,
                                focusNode: _model.textFieldFocusNode1,
                                autofocus: false,
                                textCapitalization: TextCapitalization.none,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      'Informações (Exemplo: Levar 1kg de alimento)',
                                  labelStyle: FlutterFlowTheme.of(context)
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                maxLines: null,
                                keyboardType: TextInputType.multiline,
                                validator: _model.textController3Validator
                                    .asValidator(context),
                                inputFormatters: [
                                  if (!isAndroid && !isiOS)
                                    TextInputFormatter.withFunction(
                                        (oldValue, newValue) {
                                      return TextEditingValue(
                                        selection: newValue.selection,
                                        text: newValue.text.toCapitalization(
                                            TextCapitalization.none),
                                      );
                                    }),
                                ],
                              ),
                            ].divide(SizedBox(height: 30.0)),
                          ),
                        );
                      },
                    ),
                    if (valueOrDefault(currentUserDocument?.nivelAcesso, '') ==
                        'Administrador')
                      AuthUserStreamWidget(
                        builder: (context) => StreamBuilder<List<UsersRecord>>(
                          stream: queryUsersRecord(),
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
                            List<UsersRecord> dropDowProductorUsersRecordList =
                                snapshot.data!;

                            return FlutterFlowDropDown<String>(
                              multiSelectController:
                                  _model.dropDowProductorValueController ??=
                                      FormListFieldController<String>(null),
                              options: List<String>.from(
                                  dropDowProductorUsersRecordList
                                      .map((e) => e.uid)
                                      .toList()),
                              optionLabels: dropDowProductorUsersRecordList
                                  .map((e) => e.displayName)
                                  .toList(),
                              height: 56.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              searchTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Atribua Produtores a esse Show',
                              searchHintText: 'Busque pelo nome',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              borderWidth: 2.0,
                              borderRadius: 200.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: true,
                              isMultiSelect: true,
                              onMultiSelectChanged: (val) => safeSetState(
                                  () => _model.dropDowProductorValue = val),
                            );
                          },
                        ),
                      ),
                    if (valueOrDefault(currentUserDocument?.nivelAcesso, '') ==
                        'Administrador')
                      AuthUserStreamWidget(
                        builder: (context) => TextFormField(
                          controller: _model.textController4,
                          focusNode: _model.textFieldFocusNode2,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Tarja',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          validator: _model.textController4Validator
                              .asValidator(context),
                        ),
                      ),
                    TextFormField(
                      controller: _model.textController5,
                      focusNode: _model.textFieldFocusNode3,
                      autofocus: false,
                      textCapitalization: TextCapitalization.none,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Sinopse (Descrição do Show)',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      validator:
                          _model.textController5Validator.asValidator(context),
                      inputFormatters: [
                        if (!isAndroid && !isiOS)
                          TextInputFormatter.withFunction((oldValue, newValue) {
                            return TextEditingValue(
                              selection: newValue.selection,
                              text: newValue.text
                                  .toCapitalization(TextCapitalization.none),
                            );
                          }),
                      ],
                    ),
                    if (_model.imgCasa != null && _model.imgCasa != '')
                      TextFormField(
                        controller: _model.textController6,
                        focusNode: _model.textFieldFocusNode4,
                        autofocus: false,
                        textCapitalization: TextCapitalization.none,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Texto na foto do mapa dos Assentos',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        validator: _model.textController6Validator
                            .asValidator(context),
                        inputFormatters: [
                          if (!isAndroid && !isiOS)
                            TextInputFormatter.withFunction(
                                (oldValue, newValue) {
                              return TextEditingValue(
                                selection: newValue.selection,
                                text: newValue.text
                                    .toCapitalization(TextCapitalization.none),
                              );
                            }),
                        ],
                      ),
                    Container(
                      decoration: BoxDecoration(),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'CADASTRO_INFO_BASICA_SALVAR_BTN_ON_TAP');
                          logFirebaseEvent('Button_custom_action');
                          _model.slug = await actions.formatString(
                            _model.textFieldSlugTextController.text,
                          );
                          if ((_model.textFieldNomeTextController.text !=
                                      '') &&
                              (_model.textController5.text != '') &&
                              ((_model.dropDowProductorValue != null &&
                                      (_model.dropDowProductorValue)!
                                          .isNotEmpty) !=
                                  null) &&
                              (valueOrDefault(currentUserDocument?.nivelAcesso,
                                          '') ==
                                      'Administrador'
                                  ? (_model.dropDownLocalADMValue != null &&
                                      _model.dropDownLocalADMValue != '')
                                  : (_model.dropDownLocalValue != null &&
                                      _model.dropDownLocalValue != '')) &&
                              (_model.dropDownRocmendaValue != null &&
                                  _model.dropDownRocmendaValue != '')) {
                            logFirebaseEvent('Button_update_component_state');
                            _model.idshow = random_data.randomString(
                              5,
                              11,
                              true,
                              false,
                              false,
                            );
                            safeSetState(() {});
                            logFirebaseEvent('Button_firestore_query');
                            _model.existe = await queryShowsRecordOnce(
                              queryBuilder: (showsRecord) => showsRecord.where(
                                'slug',
                                isEqualTo:
                                    _model.textFieldSlugTextController.text,
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                            if (_model.existe?.reference != null) {
                              if (valueOrDefault(
                                      currentUserDocument?.nivelAcesso, '') ==
                                  'Administrador') {
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.atual = 0;
                                _model.total =
                                    _model.dropDowProductorValue?.length;
                                safeSetState(() {});
                                if (_model.total! > 0) {
                                  logFirebaseEvent('Button_firestore_query');
                                  _model.localADM = await queryLocalRecordOnce(
                                    queryBuilder: (localRecord) =>
                                        localRecord.where(
                                      'id',
                                      isEqualTo: _model.dropDownLocalADMValue,
                                    ),
                                    singleRecord: true,
                                  ).then((s) => s.firstOrNull);
                                  logFirebaseEvent('Button_backend_call');

                                  var showsRecordReference1 =
                                      ShowsRecord.collection.doc();
                                  await showsRecordReference1.set({
                                    ...createShowsRecordData(
                                      nome: _model
                                          .textFieldNomeTextController.text,
                                      sinopse: _model.textController5.text,
                                      foto: _model.foto,
                                      faxaEtaria: _model.dropDownRocmendaValue,
                                      id: _model.idshow,
                                      dataCriacao: getCurrentTimestamp,
                                      informacao: _model.textController3.text,
                                      oculto: true,
                                      tarja: _model.textController4.text,
                                      fotoCasa: _model.imgCasa,
                                      txtFtMapa: _model.textController6.text,
                                      criador: currentUserReference,
                                      status: 'expired',
                                      slug: _model.textFieldSlugTextController
                                                      .text !=
                                                  ''
                                          ? _model
                                              .textFieldSlugTextController.text
                                          : _model.slug,
                                      valorReceber: 0.0,
                                      quantidadeVendida: 0,
                                      valorTotal: 0.0,
                                      identificador: _model.idshow,
                                      local: _model.localADM?.reference,
                                      localNome: _model.localADM?.nome,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'produtores':
                                            _model.dropDowProductorValue,
                                      },
                                    ),
                                  });
                                  _model.criacaoshowProduzer =
                                      ShowsRecord.getDocumentFromData({
                                    ...createShowsRecordData(
                                      nome: _model
                                          .textFieldNomeTextController.text,
                                      sinopse: _model.textController5.text,
                                      foto: _model.foto,
                                      faxaEtaria: _model.dropDownRocmendaValue,
                                      id: _model.idshow,
                                      dataCriacao: getCurrentTimestamp,
                                      informacao: _model.textController3.text,
                                      oculto: true,
                                      tarja: _model.textController4.text,
                                      fotoCasa: _model.imgCasa,
                                      txtFtMapa: _model.textController6.text,
                                      criador: currentUserReference,
                                      status: 'expired',
                                      slug: _model.textFieldSlugTextController
                                                      .text !=
                                                  ''
                                          ? _model
                                              .textFieldSlugTextController.text
                                          : _model.slug,
                                      valorReceber: 0.0,
                                      quantidadeVendida: 0,
                                      valorTotal: 0.0,
                                      identificador: _model.idshow,
                                      local: _model.localADM?.reference,
                                      localNome: _model.localADM?.nome,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'produtores':
                                            _model.dropDowProductorValue,
                                      },
                                    ),
                                  }, showsRecordReference1);
                                  while (_model.atual! < _model.total!) {
                                    logFirebaseEvent('Button_firestore_query');
                                    _model.productorsaw =
                                        await queryUsersRecordOnce(
                                      queryBuilder: (usersRecord) =>
                                          usersRecord.where(
                                        'uid',
                                        isEqualTo: _model.dropDowProductorValue
                                            ?.elementAtOrNull(_model.atual!),
                                      ),
                                      singleRecord: true,
                                    ).then((s) => s.firstOrNull);
                                    logFirebaseEvent('Button_backend_call');

                                    await _model.productorsaw!.reference
                                        .update({
                                      ...mapToFirestore(
                                        {
                                          'shows': FieldValue.arrayUnion([
                                            _model
                                                .criacaoshowProduzer?.reference
                                          ]),
                                        },
                                      ),
                                    });
                                    logFirebaseEvent('Button_backend_call');

                                    await _model.productorsaw!.reference
                                        .update({
                                      ...mapToFirestore(
                                        {
                                          'shows': FieldValue.arrayUnion([
                                            _model
                                                .criacaoshowProduzer?.reference
                                          ]),
                                        },
                                      ),
                                    });
                                    logFirebaseEvent(
                                        'Button_update_component_state');
                                    _model.atual = _model.atual! + 1;
                                    safeSetState(() {});
                                    logFirebaseEvent('Button_wait__delay');
                                    await Future.delayed(
                                        const Duration(milliseconds: 1000));
                                  }
                                  logFirebaseEvent('Button_update_app_state');
                                  FFAppState().cadastrandoShow =
                                      _model.criacaoshowProduzer?.reference;
                                  FFAppState().update(() {});
                                } else {
                                  logFirebaseEvent('Button_firestore_query');
                                  _model.localADMmm =
                                      await queryLocalRecordOnce(
                                    queryBuilder: (localRecord) =>
                                        localRecord.where(
                                      'id',
                                      isEqualTo: _model.dropDownLocalADMValue,
                                    ),
                                    singleRecord: true,
                                  ).then((s) => s.firstOrNull);
                                  logFirebaseEvent('Button_backend_call');

                                  var showsRecordReference2 =
                                      ShowsRecord.collection.doc();
                                  await showsRecordReference2.set({
                                    ...createShowsRecordData(
                                      nome: _model
                                          .textFieldNomeTextController.text,
                                      sinopse: _model.textController5.text,
                                      foto: _model.foto,
                                      faxaEtaria: _model.dropDownRocmendaValue,
                                      id: _model.idshow,
                                      dataCriacao: getCurrentTimestamp,
                                      informacao: _model.textController3.text,
                                      oculto: true,
                                      tarja: _model.textController4.text,
                                      fotoCasa: _model.imgCasa,
                                      txtFtMapa: _model.textController6.text,
                                      criador: currentUserReference,
                                      status: 'expired',
                                      slug: _model.textFieldSlugTextController
                                                      .text !=
                                                  ''
                                          ? _model
                                              .textFieldSlugTextController.text
                                          : _model.slug,
                                      valorReceber: 0.0,
                                      quantidadeVendida: 0,
                                      valorTotal: 0.0,
                                      identificador: _model.idshow,
                                      local: _model.localADMmm?.reference,
                                      localNome: _model.localADMmm?.nome,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'produtores': [currentUserUid],
                                      },
                                    ),
                                  });
                                  _model.criacaoshowUser =
                                      ShowsRecord.getDocumentFromData({
                                    ...createShowsRecordData(
                                      nome: _model
                                          .textFieldNomeTextController.text,
                                      sinopse: _model.textController5.text,
                                      foto: _model.foto,
                                      faxaEtaria: _model.dropDownRocmendaValue,
                                      id: _model.idshow,
                                      dataCriacao: getCurrentTimestamp,
                                      informacao: _model.textController3.text,
                                      oculto: true,
                                      tarja: _model.textController4.text,
                                      fotoCasa: _model.imgCasa,
                                      txtFtMapa: _model.textController6.text,
                                      criador: currentUserReference,
                                      status: 'expired',
                                      slug: _model.textFieldSlugTextController
                                                      .text !=
                                                  ''
                                          ? _model
                                              .textFieldSlugTextController.text
                                          : _model.slug,
                                      valorReceber: 0.0,
                                      quantidadeVendida: 0,
                                      valorTotal: 0.0,
                                      identificador: _model.idshow,
                                      local: _model.localADMmm?.reference,
                                      localNome: _model.localADMmm?.nome,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'produtores': [currentUserUid],
                                      },
                                    ),
                                  }, showsRecordReference2);
                                  logFirebaseEvent('Button_backend_call');

                                  await currentUserReference!.update({
                                    ...mapToFirestore(
                                      {
                                        'shows': FieldValue.arrayUnion([
                                          _model.criacaoshowUser?.reference
                                        ]),
                                      },
                                    ),
                                  });
                                  logFirebaseEvent('Button_update_app_state');
                                  FFAppState().cadastrandoShow =
                                      _model.criacaoshowUser?.reference;
                                  FFAppState().update(() {});
                                }

                                logFirebaseEvent('Button_show_snack_bar');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Configurações Salvas',
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
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.abrir = !_model.abrir;
                                _model.updatePage(() {});
                              } else {
                                logFirebaseEvent('Button_firestore_query');
                                _model.localNOMRal = await queryLocalRecordOnce(
                                  queryBuilder: (localRecord) =>
                                      localRecord.where(
                                    'id',
                                    isEqualTo: _model.dropDownLocalValue,
                                  ),
                                  singleRecord: true,
                                ).then((s) => s.firstOrNull);
                                logFirebaseEvent('Button_backend_call');

                                var showsRecordReference3 =
                                    ShowsRecord.collection.doc();
                                await showsRecordReference3.set({
                                  ...createShowsRecordData(
                                    nome:
                                        _model.textFieldNomeTextController.text,
                                    sinopse: _model.textController5.text,
                                    foto: _model.foto,
                                    faxaEtaria: _model.dropDownRocmendaValue,
                                    id: _model.idshow,
                                    dataCriacao: getCurrentTimestamp,
                                    informacao: _model.textController3.text,
                                    oculto: true,
                                    fotoCasa: _model.imgCasa,
                                    txtFtMapa: _model.textController6.text,
                                    criador: currentUserReference,
                                    status: 'expired',
                                    slug: _model.textFieldSlugTextController
                                                    .text !=
                                                ''
                                        ? _model
                                            .textFieldSlugTextController.text
                                        : _model.slug,
                                    valorReceber: 0.0,
                                    quantidadeVendida: 0,
                                    valorTotal: 0.0,
                                    identificador: _model.idshow,
                                    local: _model.localNOMRal?.reference,
                                    localNome: _model.localNOMRal?.nome,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'produtores': [currentUserUid],
                                    },
                                  ),
                                });
                                _model.criacaoshow =
                                    ShowsRecord.getDocumentFromData({
                                  ...createShowsRecordData(
                                    nome:
                                        _model.textFieldNomeTextController.text,
                                    sinopse: _model.textController5.text,
                                    foto: _model.foto,
                                    faxaEtaria: _model.dropDownRocmendaValue,
                                    id: _model.idshow,
                                    dataCriacao: getCurrentTimestamp,
                                    informacao: _model.textController3.text,
                                    oculto: true,
                                    fotoCasa: _model.imgCasa,
                                    txtFtMapa: _model.textController6.text,
                                    criador: currentUserReference,
                                    status: 'expired',
                                    slug: _model.textFieldSlugTextController
                                                    .text !=
                                                ''
                                        ? _model
                                            .textFieldSlugTextController.text
                                        : _model.slug,
                                    valorReceber: 0.0,
                                    quantidadeVendida: 0,
                                    valorTotal: 0.0,
                                    identificador: _model.idshow,
                                    local: _model.localNOMRal?.reference,
                                    localNome: _model.localNOMRal?.nome,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'produtores': [currentUserUid],
                                    },
                                  ),
                                }, showsRecordReference3);
                                logFirebaseEvent('Button_backend_call');

                                await currentUserReference!.update({
                                  ...mapToFirestore(
                                    {
                                      'shows': FieldValue.arrayUnion(
                                          [_model.criacaoshow?.reference]),
                                    },
                                  ),
                                });
                                logFirebaseEvent('Button_update_app_state');
                                FFAppState().cadastrandoShow =
                                    _model.criacaoshow?.reference;
                                FFAppState().update(() {});
                                logFirebaseEvent('Button_show_snack_bar');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Configurações Salvas',
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
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.abrir = !_model.abrir;
                                _model.updatePage(() {});
                              }
                            } else {
                              if (valueOrDefault(
                                      currentUserDocument?.nivelAcesso, '') ==
                                  'Administrador') {
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.atual = 0;
                                _model.total =
                                    _model.dropDowProductorValue?.length;
                                safeSetState(() {});
                                if (_model.total! > 0) {
                                  logFirebaseEvent('Button_firestore_query');
                                  _model.localADM2 = await queryLocalRecordOnce(
                                    queryBuilder: (localRecord) =>
                                        localRecord.where(
                                      'id',
                                      isEqualTo: _model.dropDownLocalADMValue,
                                    ),
                                    singleRecord: true,
                                  ).then((s) => s.firstOrNull);
                                  logFirebaseEvent('Button_backend_call');

                                  var showsRecordReference4 =
                                      ShowsRecord.collection.doc();
                                  await showsRecordReference4.set({
                                    ...createShowsRecordData(
                                      nome: _model
                                          .textFieldNomeTextController.text,
                                      sinopse: _model.textController5.text,
                                      foto: _model.foto,
                                      faxaEtaria: _model.dropDownRocmendaValue,
                                      id: _model.idshow,
                                      dataCriacao: getCurrentTimestamp,
                                      informacao: _model.textController3.text,
                                      oculto: true,
                                      tarja: _model.textController4.text,
                                      fotoCasa: _model.imgCasa,
                                      txtFtMapa: _model.textController6.text,
                                      criador: currentUserReference,
                                      status: 'expired',
                                      slug: _model.textFieldSlugTextController
                                                      .text !=
                                                  ''
                                          ? _model
                                              .textFieldSlugTextController.text
                                          : _model.slug,
                                      quantidadeVendida: 0,
                                      valorReceber: 0.0,
                                      valorTotal: 0.0,
                                      identificador: _model.idshow,
                                      local: _model.localADM2?.reference,
                                      localNome: _model.localADM2?.nome,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'produtores':
                                            _model.dropDowProductorValue,
                                      },
                                    ),
                                  });
                                  _model.criacaoshowProduzer2 =
                                      ShowsRecord.getDocumentFromData({
                                    ...createShowsRecordData(
                                      nome: _model
                                          .textFieldNomeTextController.text,
                                      sinopse: _model.textController5.text,
                                      foto: _model.foto,
                                      faxaEtaria: _model.dropDownRocmendaValue,
                                      id: _model.idshow,
                                      dataCriacao: getCurrentTimestamp,
                                      informacao: _model.textController3.text,
                                      oculto: true,
                                      tarja: _model.textController4.text,
                                      fotoCasa: _model.imgCasa,
                                      txtFtMapa: _model.textController6.text,
                                      criador: currentUserReference,
                                      status: 'expired',
                                      slug: _model.textFieldSlugTextController
                                                      .text !=
                                                  ''
                                          ? _model
                                              .textFieldSlugTextController.text
                                          : _model.slug,
                                      quantidadeVendida: 0,
                                      valorReceber: 0.0,
                                      valorTotal: 0.0,
                                      identificador: _model.idshow,
                                      local: _model.localADM2?.reference,
                                      localNome: _model.localADM2?.nome,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'produtores':
                                            _model.dropDowProductorValue,
                                      },
                                    ),
                                  }, showsRecordReference4);
                                  while (_model.atual! < _model.total!) {
                                    logFirebaseEvent('Button_firestore_query');
                                    _model.productorsaw2 =
                                        await queryUsersRecordOnce(
                                      queryBuilder: (usersRecord) =>
                                          usersRecord.where(
                                        'uid',
                                        isEqualTo: _model.dropDowProductorValue
                                            ?.elementAtOrNull(_model.atual!),
                                      ),
                                      singleRecord: true,
                                    ).then((s) => s.firstOrNull);
                                    logFirebaseEvent('Button_backend_call');

                                    await _model.productorsaw2!.reference
                                        .update({
                                      ...mapToFirestore(
                                        {
                                          'shows': FieldValue.arrayUnion([
                                            _model
                                                .criacaoshowProduzer2?.reference
                                          ]),
                                        },
                                      ),
                                    });
                                    logFirebaseEvent(
                                        'Button_update_component_state');
                                    _model.atual = _model.atual! + 1;
                                    safeSetState(() {});
                                    logFirebaseEvent('Button_wait__delay');
                                    await Future.delayed(
                                        const Duration(milliseconds: 1000));
                                  }
                                  logFirebaseEvent('Button_update_app_state');
                                  FFAppState().cadastrandoShow =
                                      _model.criacaoshowProduzer2?.reference;
                                  FFAppState().update(() {});
                                } else {
                                  logFirebaseEvent('Button_firestore_query');
                                  _model.localADMmm2 =
                                      await queryLocalRecordOnce(
                                    queryBuilder: (localRecord) =>
                                        localRecord.where(
                                      'id',
                                      isEqualTo: _model.dropDownLocalADMValue,
                                    ),
                                    singleRecord: true,
                                  ).then((s) => s.firstOrNull);
                                  logFirebaseEvent('Button_backend_call');

                                  var showsRecordReference5 =
                                      ShowsRecord.collection.doc();
                                  await showsRecordReference5.set({
                                    ...createShowsRecordData(
                                      nome: _model
                                          .textFieldNomeTextController.text,
                                      sinopse: _model.textController5.text,
                                      foto: _model.foto,
                                      faxaEtaria: _model.dropDownRocmendaValue,
                                      id: _model.idshow,
                                      dataCriacao: getCurrentTimestamp,
                                      informacao: _model.textController3.text,
                                      oculto: true,
                                      tarja: _model.textController4.text,
                                      fotoCasa: _model.imgCasa,
                                      txtFtMapa: _model.textController6.text,
                                      criador: currentUserReference,
                                      status: 'expired',
                                      slug: _model.textFieldSlugTextController
                                                      .text !=
                                                  ''
                                          ? _model
                                              .textFieldSlugTextController.text
                                          : _model.slug,
                                      valorReceber: 0.0,
                                      quantidadeVendida: 0,
                                      valorTotal: 0.0,
                                      identificador: _model.idshow,
                                      local: _model.localADMmm2?.reference,
                                      localNome: _model.localADMmm2?.nome,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'produtores': [currentUserUid],
                                      },
                                    ),
                                  });
                                  _model.criacaoshowUser2 =
                                      ShowsRecord.getDocumentFromData({
                                    ...createShowsRecordData(
                                      nome: _model
                                          .textFieldNomeTextController.text,
                                      sinopse: _model.textController5.text,
                                      foto: _model.foto,
                                      faxaEtaria: _model.dropDownRocmendaValue,
                                      id: _model.idshow,
                                      dataCriacao: getCurrentTimestamp,
                                      informacao: _model.textController3.text,
                                      oculto: true,
                                      tarja: _model.textController4.text,
                                      fotoCasa: _model.imgCasa,
                                      txtFtMapa: _model.textController6.text,
                                      criador: currentUserReference,
                                      status: 'expired',
                                      slug: _model.textFieldSlugTextController
                                                      .text !=
                                                  ''
                                          ? _model
                                              .textFieldSlugTextController.text
                                          : _model.slug,
                                      valorReceber: 0.0,
                                      quantidadeVendida: 0,
                                      valorTotal: 0.0,
                                      identificador: _model.idshow,
                                      local: _model.localADMmm2?.reference,
                                      localNome: _model.localADMmm2?.nome,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'produtores': [currentUserUid],
                                      },
                                    ),
                                  }, showsRecordReference5);
                                  logFirebaseEvent('Button_backend_call');

                                  await currentUserReference!.update({
                                    ...mapToFirestore(
                                      {
                                        'shows': FieldValue.arrayUnion([
                                          _model.criacaoshowUser2?.reference
                                        ]),
                                      },
                                    ),
                                  });
                                  logFirebaseEvent('Button_update_app_state');
                                  FFAppState().cadastrandoShow =
                                      _model.criacaoshowUser2?.reference;
                                  FFAppState().update(() {});
                                }

                                logFirebaseEvent('Button_show_snack_bar');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Configurações Salvas',
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
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.abrir = !_model.abrir;
                                _model.updatePage(() {});
                              } else {
                                logFirebaseEvent('Button_firestore_query');
                                _model.localNOMRalk =
                                    await queryLocalRecordOnce(
                                  queryBuilder: (localRecord) =>
                                      localRecord.where(
                                    'id',
                                    isEqualTo: _model.dropDownLocalValue,
                                  ),
                                  singleRecord: true,
                                ).then((s) => s.firstOrNull);
                                logFirebaseEvent('Button_backend_call');

                                var showsRecordReference6 =
                                    ShowsRecord.collection.doc();
                                await showsRecordReference6.set({
                                  ...createShowsRecordData(
                                    nome:
                                        _model.textFieldNomeTextController.text,
                                    sinopse: _model.textController5.text,
                                    foto: _model.foto,
                                    faxaEtaria: _model.dropDownRocmendaValue,
                                    id: _model.idshow,
                                    dataCriacao: getCurrentTimestamp,
                                    informacao: _model.textController3.text,
                                    oculto: true,
                                    fotoCasa: _model.imgCasa,
                                    txtFtMapa: _model.textController6.text,
                                    criador: currentUserReference,
                                    status: 'expired',
                                    slug: _model.textFieldSlugTextController
                                                    .text !=
                                                ''
                                        ? _model
                                            .textFieldSlugTextController.text
                                        : _model.slug,
                                    valorReceber: 0.0,
                                    quantidadeVendida: 0,
                                    valorTotal: 0.0,
                                    identificador: _model.idshow,
                                    local: _model.localNOMRalk?.reference,
                                    localNome: _model.localNOMRalk?.nome,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'produtores': [currentUserUid],
                                    },
                                  ),
                                });
                                _model.criacaoshow2 =
                                    ShowsRecord.getDocumentFromData({
                                  ...createShowsRecordData(
                                    nome:
                                        _model.textFieldNomeTextController.text,
                                    sinopse: _model.textController5.text,
                                    foto: _model.foto,
                                    faxaEtaria: _model.dropDownRocmendaValue,
                                    id: _model.idshow,
                                    dataCriacao: getCurrentTimestamp,
                                    informacao: _model.textController3.text,
                                    oculto: true,
                                    fotoCasa: _model.imgCasa,
                                    txtFtMapa: _model.textController6.text,
                                    criador: currentUserReference,
                                    status: 'expired',
                                    slug: _model.textFieldSlugTextController
                                                    .text !=
                                                ''
                                        ? _model
                                            .textFieldSlugTextController.text
                                        : _model.slug,
                                    valorReceber: 0.0,
                                    quantidadeVendida: 0,
                                    valorTotal: 0.0,
                                    identificador: _model.idshow,
                                    local: _model.localNOMRalk?.reference,
                                    localNome: _model.localNOMRalk?.nome,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'produtores': [currentUserUid],
                                    },
                                  ),
                                }, showsRecordReference6);
                                logFirebaseEvent('Button_backend_call');

                                await currentUserReference!.update({
                                  ...mapToFirestore(
                                    {
                                      'shows': FieldValue.arrayUnion(
                                          [_model.criacaoshow2?.reference]),
                                    },
                                  ),
                                });
                                logFirebaseEvent('Button_update_app_state');
                                FFAppState().cadastrandoShow =
                                    _model.criacaoshow2?.reference;
                                FFAppState().update(() {});
                                logFirebaseEvent('Button_show_snack_bar');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Configurações Salvas',
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
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.abrir = !_model.abrir;
                                _model.updatePage(() {});
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
                                    content:
                                        Text('Preencha todas as informações'),
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

                          safeSetState(() {});
                        },
                        text: 'SALVAR',
                        icon: Icon(
                          Icons.check,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 250.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 16.0, 24.0, 16.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).corMenu,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
                                    fontStyle: FlutterFlowTheme.of(context)
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
                    ),
                  ].divide(SizedBox(height: 30.0)),
                ),
            ].divide(SizedBox(height: 30.0)),
          ),
        ),
      ),
    );
  }
}
